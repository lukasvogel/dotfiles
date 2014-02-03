#!/bin/sh

# Home folder dotfiles
for F in .bashrc .vimrc .inputrc .tmux.conf .xpdfrc .signature .Xresources .Xmodmap .xinitrc .xprofile .zshrc .conkyrc .xbindkeysrc .gitconfig .vimperatorrc; do
  SOURCE=$PWD/$F
  TARGET=~/$F

  # Check if file exists, rename if so
  [ -f $TARGET ] && mv $TARGET ${TARGET}_bck
  rm $TARGET

  echo "Symlink: $SOURCE -> $TARGET"
  ln -s $SOURCE $TARGET
done

# Home folder dotfolders
for F in .colors .config/uzbl .config/awesome .config/bspwm .config/sxhkd .config/luakit .config/openbox .i3 .mutt .ncmpcpp .vim .w3m; do
  SOURCE=$PWD/$F
  TARGET=~/$F

  # Check if file exists, rename if so
  [ -f $TARGET ] && mv $TARGET ${TARGET}_bck
  rm -rf $TARGET

  echo "Symlink: $SOURCE -> $TARGET"
  ln -s $SOURCE $TARGET
done

# Home folder bin directory
for F in `ls bin/`; do
  SOURCE=$PWD/bin/$F
  TARGET=~/bin/$F

  # Check if file exists, rename if so
  [ -f $TARGET ] && mv $TARGET ${TARGET}_bck
  rm -rf $TARGET

  echo "Symlink: $SOURCE -> $TARGET"
  ln -s $SOURCE $TARGET
done
