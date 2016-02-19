FROM ubuntu-debootstrap:15.04
MAINTAINER https://github.com/royvandewater

RUN apt-get update && apt-get install -y git vim htop psmisc curl build-essential
# RUN mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# COPY vimrc ~/.vimrc
RUN curl -sSL https://experimental.docker.com/ubuntu/ | sh
