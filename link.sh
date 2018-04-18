#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -snf ~/dotfiles/.vim/ ~/.vim
mkdir -p ~/dotfiles/.vim/colors
# ここでgit submodule initとgit submodule updateもする？
ln -sf ~/dotfiles/papercolor-theme/colors/PaperColor.vim ~/dotfiles/.vim/colors/PaperColor.vim
