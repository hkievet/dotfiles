#!/bin/bash

for f in *
do
  if [[ "$f" == "init.vim" ]]
  then
    echo "Processing $f in a special way"
    ln -f $f ../.config/nvim/$f
  elif [[ $f == *.md ]]
  then
    echo "Skipping $f"
  else
    echo "Processing $f"
    ln -f $f ../.$f
  fi
done
