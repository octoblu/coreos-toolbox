FROM ubuntu-debootstrap:15.04
MAINTAINER https://github.com/royvandewater

RUN apt-get update && apt-get install -y git vim htop psmisc curl
RUN curl -sSL https://experimental.docker.com/ubuntu/ | sh
