FROM ubuntu-debootstrap:15.04
MAINTAINER https://github.com/royvandewater

RUN apt-get update && apt-get install -y git vim htop psmisc curl build-essential linux-image-virtual linux-image-extra-virtual
RUN curl -sSL https://get.docker.com/ | sh



# RUN mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# COPY vimrc ~/.vimrc
