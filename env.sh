#!/bin/sh
groupadd -g ${GID} ${USER}
useradd -m -u ${UID} -g ${GID} -p `echo "${PASSWD}" | openssl passwd -1 -stdin` -s ${SHELL} ${USER}
chroot --userspec=${USER}:${USER} / ${SHELL} -c "HOME=/home/${USER} ${SHELL}"
