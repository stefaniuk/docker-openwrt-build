[![Circle CI](https://circleci.com/gh/stefaniuk/docker-openwrt-build.svg?style=shield "CircleCI")](https://circleci.com/gh/stefaniuk/docker-openwrt-build)&nbsp;[![Size](https://images.microbadger.com/badges/image/stefaniuk/openwrt-build.svg)](http://microbadger.com/images/stefaniuk/openwrt-build)&nbsp;[![Version](https://images.microbadger.com/badges/version/stefaniuk/openwrt-build.svg)](http://microbadger.com/images/stefaniuk/openwrt-build)&nbsp;[![Commit](https://images.microbadger.com/badges/commit/stefaniuk/openwrt-build.svg)](http://microbadger.com/images/stefaniuk/openwrt-build)&nbsp;[![Docker Hub](https://img.shields.io/docker/pulls/stefaniuk/openwrt-build.svg)](https://hub.docker.com/r/stefaniuk/openwrt-build/)

Docker OpenWrt Build
====================

OpenWrt is an embedded operating system based on the Linux kernel, primarily used on embedded devices to route network traffic. This project helps to generate an installable OpenWrt firmware image.

Installation
------------

Builds of the image are available on [Docker Hub](https://hub.docker.com/r/stefaniuk/openwrt-build/).

    docker pull stefaniuk/openwrt-build

Alternatively you can build the image yourself.

    docker build --tag stefaniuk/openwrt-build \
        github.com/stefaniuk/docker-openwrt-build
