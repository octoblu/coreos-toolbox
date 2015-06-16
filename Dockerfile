FROM ubuntu-debootstrap:14.04
MAINTAINER https://github.com/royvandewater

RUN apt-get update && apt-get install -y git vim htop
