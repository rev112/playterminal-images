FROM phusion/baseimage
MAINTAINER Anton Ovchinnikov <anton.ovchi2nikov@gmail.com>

RUN apt-get update && apt-get --no-install-recommends -y install \
    man wget vim nano screen tmux \
 && apt-get clean \
 && useradd -m box

RUN mkdir -p /.box/bashrc.d/box

COPY bashrc/root /root/.bashrc
COPY bashrc/box /home/box/.bashrc

COPY greeting /.box/greeting
COPY start.sh /.box/start.sh
COPY run_game.sh /.box/run_game.sh

CMD /.box/start.sh
