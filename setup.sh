#!/bin/bash

sudo apt-get install nodejs git vim curl rustc default-jdk default-jre
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/Akshai-2909/vim.git
cd vim && mv .vimrc ../
rm vim
sudo apt-get update
# sudo apt-get upgrade

