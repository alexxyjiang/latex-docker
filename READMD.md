# Official TexLive on Debian
This docker file builds the official texlive on debian-slim, with multiplatform support.

## multiplatform support
* Please refer to the [official document](https://docs.docker.com/build/guide/multi-platform/) for the multiplatform support.

* For linux docker container, you should append the following content to **/etc/docker/daemon.json**.
```json
"features": {
  "containerd-snapshotter": true
}
```

* Then please install multiplatform support with (required once).
```sh
docker run --privileged --rm tonistiigi/binfmt --install all
```

## docker commands

* build the image
```sh
docker pull debian:bookworm-slim && docker build -t alexxyjiang/texlive-full:latest --platform linux/amd64,linux/arm64 .
```

* run the container
```sh
docker run -i -t --userns=host --name texlive --rm -e USER=$(id -un) -e UID=$(id -u) -e GID=$(id -g) -v `pwd`:/mnt alexxyjiang/texlive-full:latest
```
