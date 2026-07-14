# syntax=docker/dockerfile:1

FROM scratch
COPY --from=qemux/qemu:7.36 / /

ARG VERSION_ARG="0.0"

ARG DEBCONF_NOWARNINGS="yes"
ARG DEBIAN_FRONTEND="noninteractive"
ARG DEBCONF_NONINTERACTIVE_SEEN="true"

RUN <<EOF
  set -eu

  apt-get update
  apt-get --no-install-recommends -y install \
    curl \
    nano

  apt-get clean

  # Set version file
  echo "$VERSION_ARG" > /etc/version

  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EOF

ADD "https://github.com/zima-os/images/releases/download/v${VERSION_ARG}/zimaos-x86_64-${VERSION_ARG}_installer.qcow2" /img.qcow2
COPY --chmod=755 ./src /run/

VOLUME /storage
EXPOSE 80 445 8006

ENV RAM_SIZE="4G"
ENV CPU_CORES="2"
ENV DISK_SIZE="1T"

HEALTHCHECK --interval=60s --start-period=45s --retries=2 CMD ["/run/check.sh"]

ENTRYPOINT ["/usr/bin/tini", "-s", "/run/entry.sh"]
