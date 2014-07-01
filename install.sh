#!/bin/bash

git clone https://github.com/mapleking3/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/gmarik/vundle.git~/.vim/bundle/vundle

sudo apt-get install tmux
sudo apt-get install zsh

cp ./.tmux.conf ~/.tmux.conf
cp ./.bashrc ~/.bashrc
cp ./.gitconfig ~/.gitconfig
cp ./.vimrc ~/.vimrc
cp ./.vim ~/.vim -arf
