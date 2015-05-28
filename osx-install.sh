#!/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# from `brew list`
brews=( "autoconf"\
    "automake"\
    "brew-cask"\
    "cmake"\
    "emacs-mac"\
    "gdbm"\
    "gettext"\
    "git"\
    "gnu-getopt"\
    "gnupg"\
    "htop-osx"\
    "libevent"\
    "lua"\
    "nmap"\
    "openssl"\
    "pass"\
    "pcre"\
    "pkg-config"\
    "pwgen"\
    "tmux"\
    "tree"\
    "vim"\
    "watch"\
    "wget"\
    "youtube-dl"\
    "zsh" )

for brew in $brews; do
    brew install $brew
done

# install homebrew-cask
brew install caskroom/cask/brew-cask

# from `brew cask list`
casks=( "adobe-creative-cloud" \
    "adobe-reader"\
    "amethyst"\
    "caffeine"\
    "disk-inventory-x"\
    "firefox"\
    "flux"\
    "google-chrome"\
    "google-drive"\
    "google-hangouts"\
    "inkscape"\
    "iterm2"\
    "karabiner"\
    "libreoffice"\
    "mactex"\
    "menumeters"\
    "osxfuse"\
    "paraview"\
    "skim"\
    "skype"\
    "sshfs"\
    "torbrowser"\
    "vlc"\
    "xquartz" )

for cask in $casks; do
    brew cask install $cask
done
