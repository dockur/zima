#!/usr/bin/env bash
set -Eeuo pipefail

: "${APP:="ZimaOS"}"
: "${SUPPORT:="https://github.com/dockur/zima"}"

: "${SHUTDOWN:="Y"}"
: "${TIMEOUT:="60"}"
: "${PLATFORM:="x64"}"
: "${CHECK_PORT:="80"}"
: "${DISK_FMT:="qcow2"}"

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
. power.sh      # Configure shutdown
. memory.sh     # Check available memory
. balloon.sh    # Initialize ballooning
. config.sh     # Configure arguments
. finish.sh     # Finish initialization

trap - ERR

version=$(qemu-system-x86_64 --version | head -n 1 | cut -d '(' -f 1 | awk '{ print $NF }')
info "Booting image${BOOT_DESC} using QEMU v$version..."

if [ ! -t 1 ] || [ ! -c /dev/tty ]; then
  qemu-system-x86_64 ${ARGS:+ $ARGS} &
else
  qemu-system-x86_64 ${ARGS:+ $ARGS} </dev/tty >/dev/tty &
fi
 
rc=0
wait $! || rc=$?
[ -f "$QEMU_END" ] && exit "$rc"

sleep 1 & wait $!
finish "$rc"
