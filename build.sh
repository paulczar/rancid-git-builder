#!/bin/bash

VERSION=${VERSION:-master}

cd /tmp

curl -sSL https://github.com/dotwaffle/rancid-git/archive/${VERSION}.tar.gz | tar xzvf -

cd rancid-git-${VERSION}

./configure --prefix=/opt/rancid-git --with-git

make install

mkdir -p /pkg/${DISTRO}

cd /pkg/${DISTRO}

fpm -s dir -t deb -n rancid-git -v ${VERSION} -C /opt/rancid-git \
  -p rancid-git-VERSION_ARCH.deb .
