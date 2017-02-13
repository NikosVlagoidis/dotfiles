#!/usr/bin/env bash


# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/linux/.bashrc" ~

# Install Bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

~/.bash_it/install.sh --silent


