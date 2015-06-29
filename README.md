Docker based package builder for rancid-git

This will build a .deb for rancid-git installed into /opt/rancid-git

```
$ export DISTRO=trusty
$ docker build -f Dockerfile.$DISTRO -t rancid-git-builder/$DISTRO .
$ docker run --rm -t -v $(pwd)/pkg:/pkg rancid-git-builder/$DISTRO
...
...
$ ls pkg/trusty
rancid-git-master_amd64.deb
$ docker run --rm -t -v $(pwd)/pkg:/pkg -e VERSION=2.3.8 rancid-git-builder/trusty
...
...
$ ls pkg/trusty
rancid-git-master_amd64.deb
rancid-git-2.3.8_amd64.deb
```
