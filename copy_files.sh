#!/bin/bash

for f in *
do
  echo "Processing $f"
  if [[ "$f" == "init.vim" ]]
  then
    ln -f $f ../.config/nvim/$f
  else
    ln -f $f ../.$f
  fi
done
