FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

LABEL maintainer="harry8698"

RUN apt-get update
RUN apt-get install -y \
    default-jre perl libjson-perl libwww-perl \
    liblwp-protocol-https-perl util-linux \
    python make wget git rdiff-backup rsync socat iptables \
    sudo build-essential \
    python3-pillow python3-dev python3-numpy
RUN apt-get install openjdk-17-jdk -y

RUN ln -sf /bin/bash /bin/sh

RUN git clone git://github.com/overviewer/Minecraft-Overviewer.git
RUN git clone https://github.com/MinecraftServerControl/mscs.git

WORKDIR /Minecraft-Overviewer
RUN python3 setup.py install

WORKDIR /mscs
RUN make install
