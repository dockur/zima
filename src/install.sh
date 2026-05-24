#!/usr/bin/env bash
set -Eeuo pipefail

# Docker environment variables

: "${VERSION:=""}"           # ZimaOS Version

if [[ "${VERSION}" == \"*\" || "${VERSION}" == \'*\' ]]; then
  VERSION="${VERSION:1:-1}"
fi

VERSION="${VERSION#"${VERSION%%[! ]*}"}"
VERSION="${VERSION%"${VERSION##*[! ]}"}"

if [ -z "$VERSION" ]; then

  VERSION="1.6.1"
  warn "no value specified for the VERSION variable, defaulting to \"${VERSION}\"."

fi

STORAGE="$STORAGE/${VERSION,,}"

return 0
