#!/bin/bash

sudo apt-get install tmux
sudo apt-get install zsh
sudo apt-get install ctags cscope

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle


cp ./.tmux.conf ~/.tmux.conf
cp ./.bashrc ~/.bashrc
cp ./.gitconfig ~/.gitconfig
cp ./.vimrc ~/.vimrc
cp ./.vim ~/.vim -arf
