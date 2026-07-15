#!/usr/bin/env bash
set -Eeuo pipefail

downloadFile() {

  local url="$1"
  local base="$2"
  local name="$3"
  local expected="${4:-0}"
  local msg rc total size log
  local reason=""
  local progress=()
  local dotbytes=6291456

  local dest="$STORAGE/$base"

  # Check if running with interactive TTY or redirected to docker log
  if [ -t 1 ]; then
    progress=( --progress=bar:noscroll )
  else
    if [[ "$expected" =~ ^[0-9]+$ ]] && (( expected > 0 )); then
      dotbytes=$(( (expected + 199) / 200 ))
    fi
    progress=( --progress=dot --execute "dotbytes=$dotbytes" )
  fi

  if [ -z "$name" ]; then
    msg="Downloading image"
    info "Downloading $base..."
  else
    msg="Downloading $name"
    info "Downloading $name..."
  fi

  html "$msg..."
  log=$(mktemp)

  /run/progress.sh "$dest" "$expected" "$msg ([P])..." &

  {
    LC_ALL=C wget "$url" -O "$dest" --continue --no-verbose --timeout=30 \
      --no-http-keep-alive --show-progress "${progress[@]}" \
      --output-file="$log"
    rc=$?
  } || :

  fKill "progress.sh"

  if (( rc != 0 )); then
    reason=$(sed -n \
      -e 's/^wget: //p' \
      -e 's/^[0-9-]\{10\} [0-9:]\{8\} ERROR //p' \
      "$log" | tail -n 1)
  fi

  rm -f "$log"

  if (( rc == 0 )) && [ -f "$dest" ]; then

    if ! total=$(stat -c%s "$dest"); then
      error "Failed to determine downloaded file size: $dest"
      return 1
    fi

    size=$(formatBytes "$total") || return 1

    if [ "$total" -lt 100000 ]; then
      error "Invalid image file: is only $size ?"
      return 1
    fi

    html "Download finished successfully..."
    return 0
  fi

  msg="Failed to download $url"

  if (( rc == 3 )); then
    error "$msg because the file could not be written (disk full?)."
  elif [ -n "$reason" ]; then
    error "$msg: ${reason%.}."
  else
    error "$msg with exit status $rc."
  fi

  return 1
}

bootFile() {

  local file="$1"
  local ext="${file##*.}"
  local dest="$STORAGE/boot.$ext"

  if [[ "$file" == "$dest" ]]; then
    BOOT="$file"
    return 0
  fi

  if [[ "${file,,}" == "/boot.${ext,,}" || "${file,,}" == "/custom.${ext,,}" ]]; then
    BOOT="$file"
    return 0
  fi

  if ! mv -f "$file" "$dest"; then
    error "Failed to move $file to $dest !"
    return 1
  fi

  BOOT="$dest"
  return 0
}

findFile() {

  local dir file
  local base="$1"
  local ext="$2"
  local fname="${base}.${ext}"

  dir=$(find / -maxdepth 1 -type d -iname "$fname" -print -quit)
  [ ! -d "$dir" ] && dir=$(find "$STORAGE" -maxdepth 1 -type d -iname "$fname" -print -quit)

  if [ -d "$dir" ]; then
    if hasDisk; then
      BOOT="none"
      return 0
    fi
    error "The bind $dir maps to a file that does not exist!" && exit 37
  fi

  file=$(find / -maxdepth 1 -type f -iname "$fname" -print -quit)
  [ ! -s "$file" ] && file=$(find "$STORAGE" -maxdepth 1 -type f -iname "$fname" -print -quit)
  [ ! -s "$file" ] && return 1

  ! bootFile "$file" && return 1

  return 0
}

configureUserPorts() {

  USER_PORTS="22,80,443,445,${USER_PORTS:-}"

  return 0
}

configureInstaller() {

  if ! enabled "${INSTALLER:-N}"; then
    [ -z "${DISK_DISABLE:-}" ] && DISK_DISABLE="Y"
  fi

  return 0
}

prepareStorage() {

  if ! makeDir "$STORAGE"; then
    error "Failed to create directory \"$STORAGE\" !" && exit 33
  fi

  return 0
}

findExistingBootImage() {

  findFile "boot" "iso" && return 0
  findFile "boot" "img" && return 0
  findFile "boot" "raw" && return 0
  findFile "boot" "qcow2" && return 0

  return 1
}

useExistingDisk() {

  if hasDisk; then
    BOOT="none"
    return 0
  fi

  return 1
}

cleanupOldImages() {

  find "$STORAGE" -maxdepth 1 -type f \( -iname '*.rom' -or -iname '*.vars' \) -delete
  find "$STORAGE" -maxdepth 1 -type f \( -iname 'data.*' -or -iname 'qemu.*' \) -delete

  return 0
}

useBundledImage() {

  local file="img.qcow2"

  if [ -s "/$file" ]; then

    if ! cp "/$file" "$STORAGE/"; then
      error "Failed to copy bundled image ($file) to $STORAGE."
      exit 61
    fi

    ! setOwner "$STORAGE/$file" && warn "failed to set the owner for \"$STORAGE/$file\" !"

    ! bootFile "$STORAGE/$file" && exit 61

    return 0
  fi

  return 1
}

configureVersion() {

  if enabled "${INSTALLER:-N}"; then
    VERSION=""
  else
    [ -z "${VERSION:-}" ] && VERSION="1.6.1"
  fi

  return 0
}

configureDownload() {

  local release

  if enabled "${INSTALLER:-N}"; then

    if ! release=$(wget -qO- \
      "https://api.github.com/repos/IceWhaleTech/ZimaOS/releases/latest"); then
      error "Failed to retrieve the latest ZimaOS release."
      exit 60
    fi

    VERSION=$(jq -r '.tag_name // empty' <<< "$release")
    URL=$(jq -r '
      .assets[]
      | select(.name | test("^zimaos-x86_64-.*_installer\\.iso$"))
      | .browser_download_url
    ' <<< "$release" | head -n 1)

    if [ -z "$VERSION" ] || [ -z "$URL" ]; then
      error "Failed to locate the latest ZimaOS installer ISO."
      exit 60
    fi

    base="${URL##*/}"
  else
    base="zimaos-x86_64-${VERSION}_installer.qcow2"
    URL="https://github.com/zima-os/images/releases/download/v${VERSION}/$base"
  fi

  name="ZimaOS ${VERSION#v}"

  return 0
}

downloadImage() {

  rm -f "$STORAGE/$base"

  if ! downloadFile "$URL" "$base" "$name"; then
    rm -f "$STORAGE/$base" && exit 60
  fi

  ! setOwner "$STORAGE/$base" && warn "failed to set the owner for \"$STORAGE/$base\" !"

  if ! bootFile "$STORAGE/$base"; then
    exit 61
  fi

  return 0
}

configureUserPorts
configureInstaller
prepareStorage

if ! enabled "${INSTALLER:-N}"; then
  findExistingBootImage && return 0
  useExistingDisk && return 0
fi

cleanupOldImages

if ! enabled "${INSTALLER:-N}"; then
  useBundledImage && return 0
fi

configureVersion
configureDownload
downloadImage

return 0
