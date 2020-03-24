FROM debian:buster
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing \
  && apt-get install -y texlive-full
RUN tlmgr init-usertree \
  && tlmgr option repository ftp://tug.org/historic/systems/texlive/2018/tlnet-final \
  && tlmgr update --self --all
CMD ["/bin/bash"]
