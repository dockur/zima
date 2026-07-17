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
  local output=""

  local dest="$STORAGE/$base"

  # Use Wget's progress bar in a terminal and progress.sh in container logs.
  if [ -t 1 ]; then
    progress=( --show-progress --progress=bar:noscroll )
  else
    output="log"
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

  /run/progress.sh "$dest" "$expected" "$msg ([P])..." "$output" &

  {
    LC_ALL=C wget "$url" -O "$dest" --continue --no-verbose --timeout=30 \
      --no-http-keep-alive "${progress[@]}" \
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

    # Ignore a broken installation-media bind when the data disk is installed.
    # Return failure so boot.qcow2 is not mistaken for a valid legacy image.
    hasData && return 1

    error "The bind $dir maps to a file that does not exist!" && exit 37
  fi

  file=$(find / -maxdepth 1 -type f -iname "$fname" -print -quit)
  [ ! -s "$file" ] && file=$(find "$STORAGE" -maxdepth 1 -type f -iname "$fname" -print -quit)
  [ ! -s "$file" ] && return 1

  if ! bootFile "$file"; then
    return 1
  fi

  return 0
}

configureUserPorts() {

  USER_PORTS="22,80,443,445,${USER_PORTS:-}"

  return 0
}

prepareStorage() {

  if ! makeDir "$STORAGE"; then
    error "Failed to create directory \"$STORAGE\" !" && exit 33
  fi

  return 0
}

useLegacyBootImage() {

  if findFile "boot" "qcow2"; then
    [ -z "${DISK_DISABLE:-}" ] && DISK_DISABLE="Y"
    return 0
  fi

  return 1
}

useExistingDisk() {

  if ! hasData; then
    return 1
  fi

  BOOT="none"

  # The installer ISO is no longer needed after installation.
  rm -f "$STORAGE/boot.iso"

  return 0
}

findExistingInstaller() {

  findFile "boot" "iso"

}

configureVersion() {

  [ -z "${VERSION:-}" ] && VERSION="1.6.2"

  VERSION="${VERSION#v}"

  return 0
}

configureDownload() {

  local asset release

  base="zimaos-x86_64-${VERSION}.iso"

  if ! release=$(wget -qO- \
    "https://api.github.com/repos/zima-os/images/releases/tags/v${VERSION}"); then
    error "Failed to retrieve the ZimaOS ${VERSION} release."
    exit 60
  fi

  asset=$(jq -c --arg name "$base" '
    .assets[]
    | select(.name == $name)
  ' <<< "$release" | head -n 1)

  URL=$(jq -r '.browser_download_url // empty' <<< "$asset")
  SIZE=$(jq -r '.size // 0' <<< "$asset")

  if [ -z "$URL" ]; then
    error "Failed to locate the ZimaOS ${VERSION} installer ISO."
    exit 60
  fi

  if [[ ! "$SIZE" =~ ^[0-9]+$ ]] || (( SIZE < 1 )); then
    error "Failed to determine the size of the ZimaOS ${VERSION} installer ISO."
    exit 60
  fi

  name="ZimaOS v${VERSION}"

  return 0
}

downloadImage() {

  rm -f "$STORAGE/$base"

  if ! downloadFile "$URL" "$base" "$name" "$SIZE"; then
    rm -f "$STORAGE/$base"
    exit 60
  fi

  if ! setOwner "$STORAGE/$base"; then
    warn "failed to set the owner for \"$STORAGE/$base\" !"
  fi

  if ! bootFile "$STORAGE/$base"; then
    exit 61
  fi

  return 0
}

configureUserPorts
prepareStorage

useLegacyBootImage && return 0
useExistingDisk && return 0
findExistingInstaller && return 0

configureVersion
configureDownload
downloadImage

return 0
