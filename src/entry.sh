#!/usr/bin/env bash
set -Eeuo pipefail

: "${APP:="ZimaOS"}"
: "${PLATFORM:="x64"}"
: "${SUPPORT:="https://github.com/dockur/zima"}"

cd /run

. start.sh      # Startup hook
. utils.sh      # Load functions
. reset.sh      # Initialize system
. server.sh     # Start webserver
. install.sh    # Download the image
. disk.sh       # Initialize disks
. display.sh    # Initialize graphics
. network.sh    # Initialize network
. boot.sh       # Configure boot
. proc.sh       # Initialize processor
. memory.sh     # Check available memory
. balloon.sh    # Initialize ballooning
. config.sh     # Configure arguments
. finish.sh     # Finish initialization

trap - ERR

version=$(qemu-system-x86_64 --version | head -n 1 | cut -d '(' -f 1 | awk '{ print $NF }')
info "Booting ${APP}${BOOT_DESC} using QEMU v$version..."

exec qemu-system-x86_64 ${ARGS:+ $ARGS}
