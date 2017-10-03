#!/usr/bin/env bash


# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/linux/.bashrc" ~
ln -sfv "$DOTFILES_DIR/linux/.inputrc" ~

# Install Bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

~/.bash_it/install.sh --silent


while true; do
	read -p "Do you wish to install Python tools?" yn
	case $yn in
		[Yy]* ) echo "Installing python tools";
			sudo apt-get install python-pip;
			pip install virtualenv;
			pip install virtualenvwrapper;
			break;;
		[Nn]* ) break;;
		* ) "Please answer with a yes or a no" ;;
	esac
done

