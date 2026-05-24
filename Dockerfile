# syntax=docker/dockerfile:1

FROM scratch
COPY --from=qemux/qemu:7.30 / /

ARG VERSION_ARG="0.0"

ARG DEBCONF_NOWARNINGS="yes"
ARG DEBIAN_FRONTEND="noninteractive"
ARG DEBCONF_NONINTERACTIVE_SEEN="true"

RUN set -eu && \
    apt-get update && \
    apt-get --no-install-recommends -y install \
    nano && \
    apt-get clean && \
    echo "$VERSION_ARG" > /run/version && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY --chmod=755 ./src /run/

VOLUME /storage
EXPOSE 445 8080

ENV RAM_SIZE="4G"
ENV CPU_CORES="2"
ENV DISK_SIZE="1T"

ENTRYPOINT ["/usr/bin/tini", "-s", "/run/entry.sh"]
