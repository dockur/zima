#!/usr/bin/env bash
set -Eeuo pipefail

# Docker environment variables
: "${VERSION:=""}"

downloadFile() {

  local url="$1"
  local base="$2"
  local name="$3"
  local msg rc total size progress

  local dest="$STORAGE/$base"

  # Check if running with interactive TTY or redirected to docker log
  if [ -t 1 ]; then
    progress="--progress=bar:noscroll"
  else
    progress="--progress=dot:giga"
  fi

  if [ -z "$name" ]; then
    msg="Downloading image"
    info "Downloading $base..."
  else
    msg="Downloading $name"
    info "Downloading $name..."
  fi

  html "$msg..."

  /run/progress.sh "$dest" "0" "$msg ([P])..." &

  { wget "$url" -O "$dest" --continue -q --timeout=30 --no-http-keep-alive --show-progress "$progress"; rc=$?; } || :

  fKill "progress.sh"

  if (( rc == 0 )) && [ -f "$dest" ]; then
    total=$(stat -c%s "$dest")
    size=$(formatBytes "$total")
    if [ "$total" -lt 100000 ]; then
      error "Invalid image file: is only $size ?" && return 1
    fi
    html "Download finished successfully..."
    return 0
  fi

  msg="Failed to download $url"
  (( rc == 3 )) && error "$msg , cannot write file (disk full?)" && return 1
  (( rc == 4 )) && error "$msg , network failure!" && return 1
  (( rc == 8 )) && error "$msg , server issued an error response!" && return 1

  error "$msg , reason: $rc"
  return 1
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

  return 0
}

if ! makeDir "$STORAGE"; then
  error "Failed to create directory \"$STORAGE\" !" && exit 33
fi

findFile "boot" "img" && return 0
findFile "boot" "iso" && return 0

if hasDisk; then
  BOOT="none"
  return 0
fi

find "$STORAGE" -maxdepth 1 -type f \( -iname '*.rom' -or -iname '*.vars' \) -delete
find "$STORAGE" -maxdepth 1 -type f \( -iname 'data.*' -or -iname 'qemu.*' \) -delete

if [[ "${VERSION}" == \"*\" || "${VERSION}" == \'*\' ]]; then
  VERSION="${VERSION:1:-1}"
fi

VERSION="${VERSION#"${VERSION%%[! ]*}"}"
VERSION="${VERSION%"${VERSION##*[! ]}"}"

if [ -z "$VERSION" ]; then

  VERSION="1.6.1"
  warn "no value specified for the VERSION variable, defaulting to \"${VERSION}\"."

fi

name="ZimaOS"
base="zimaos-x86_64-${VERSION}_installer.iso"
URL="https://github.com/IceWhaleTech/ZimaOS/releases/download/$VERSION/$base"

rm -f "$STORAGE/$base"

msg="Downloading ZimaOS v$VERSION..."
info "$msg" && html "$msg..."

if ! downloadFile "$URL" "$base" "$name"; then
  rm -f "$STORAGE/$base" && exit 60
fi

ext="${base##*.}"
dest="$STORAGE/boot.$ext"

if ! mv -f "$STORAGE/$base" "$dest"; then
  error "Failed to move file to $dest !" && exit 61
fi
  
BOOT="$dest"

return 0
