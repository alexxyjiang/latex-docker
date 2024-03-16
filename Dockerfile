FROM debian:bookworm
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
ENV USER="texuser" PASSWD="latex" SHELL="/bin/bash" UID="8086" GID="8086"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing \
  && apt-get install -y texlive-full
COPY env.sh /env.sh
CMD ["sh", "/env.sh"]
