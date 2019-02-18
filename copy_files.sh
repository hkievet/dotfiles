#!/bin/bash

files_to_symlink=(tmux.conf vimrc zshrc gitignore_global bashrc bash_profile)

for f in ${files_to_symlink[@]}
do
  echo "Processing $f"
  ln -f $f ../.$f
done

ln -f init.vim ../.config/nvim/$f
