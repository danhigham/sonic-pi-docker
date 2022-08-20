FROM ubuntu:jammy

RUN apt-get update && apt-get install -y tmux sonic-pi-server kmod linux-modules-5.17.0-1003-oem
RUN touch /etc/modprobe.d/myalias.conf
RUN echo "alias char-major-116 snd" >> /etc/modprobe.d/myalias.conf
RUN echo "alias snd-card-0 snd-dummy" >> /etc/modprobe.d/myalias.conf

COPY asoundrc /root/.asoundrc
COPY launch.sh /root/launch.sh

EXPOSE 4567
