#!/bin/bash

FILES=".gitconfig .inputrc .vim .vimrc .wezterm.lua .zprofile .zshrc .zshrc.d"

for file in $FILES; do
  if [ -e $HOME/$file ]; then
    mv -v $HOME/$file $HOME/${file}.bak
  fi
  ln -sv $HOME/dotfiles/$file $HOME/$file
done
