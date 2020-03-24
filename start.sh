if [ $# -lt 1 ]; then
  echo "usage: sh ${0} [work-path]"
  exit 1
else
  docker run -i -t --userns=host --name texlive --rm -e USER=$(id -un) -e UID=$(id -u) -e GID=$(id -g) -v ${1}:/mnt alexxyjiang/texlive-full:latest
fi
