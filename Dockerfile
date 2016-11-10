FROM stefaniuk/ubuntu:16.04-20161110
MAINTAINER daniel.stefaniuk@gmail.com

ARG APT_PROXY
ARG APT_PROXY_SSL

WORKDIR /root

RUN set -ex \
    \
    && if [ -n "$APT_PROXY" ]; then echo "Acquire::http { Proxy \"http://${APT_PROXY}\"; };" > /etc/apt/apt.conf.d/00proxy; fi \
    && if [ -n "$APT_PROXY_SSL" ]; then echo "Acquire::https { Proxy \"https://${APT_PROXY_SSL}\"; };" > /etc/apt/apt.conf.d/00proxy; fi \
    && apt-get --yes update \
    && apt-get --yes install \
        build-essential \
        file \
        gawk \
        git \
        libncurses5-dev \
        libssl-dev \
        mercurial \
        subversion \
        unzip \
    \
    && wget https://github.com/openwrt/openwrt/archive/v15.05.1.zip \
    && unzip v15.05.1.zip \
    && cd openwrt-15.05.1 \
    && ./scripts/feeds update -a \
    && ./scripts/feeds install -a \
    \
    && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/* \
    && rm -f /etc/apt/apt.conf.d/00proxy

### METADATA ###################################################################

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF
ARG VCS_URL
LABEL \
    version=$VERSION \
    build-date=$BUILD_DATE \
    vcs-ref=$VCS_REF \
    vcs-url=$VCS_URL \
    license="MIT"
