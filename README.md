Docker based package builder for rancid-git

This will build a .deb for rancid-git installed into /opt/rancid-git

```
$ docker build -t rancid-git-builder/trusty .
$ docker run --rm -t -v $(pwd)/pkg:/pkg rancid-git-builder/trusty
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
