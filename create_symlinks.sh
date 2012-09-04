#!/bin/sh

for F in .bashrc .vimrc .tmux.conf; do
  SOURCE=$PWD/$F
  TARGET=~/$F

  # Check if file exists, rename if so
  [ -f $TARGET ] && mv $TARGET ${TARGET}_bck

  echo "Symlink: $SOURCE -> $TARGET"
  ln -s $SOURCE $TARGET

done

