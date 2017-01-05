FROM ubuntu-debootstrap:15.04
MAINTAINER https://github.com/royvandewater

RUN apt-get update && apt-get install -y git vim htop psmisc curl tmux build-essential linux-image-virtual linux-image-extra-virtual
# RUN curl -sSL https://get.docker.com/ | sh
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-1.12.5.tgz && tar --strip-components=1 -xvzf docker-1.12.5.tgz -C /usr/local/bin
RUN chmod +x /usr/local/bin/docker
COPY ram-usage.sh /usr/local/bin/
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
RUN nvm install 7



RUN mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
COPY vimrc ~/.vimrc
