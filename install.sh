#!/bin/bash

# Instala o config do ssh.
if [ ! -d ~/.ssh ]
then
   mkdir -p ~/.ssh
fi
cp -v ssh-config ~/.ssh/config


# Instala o config do ZSH 
if [ ! -d ~/.oh-my-zsh ]
then
   echo ">>> Precisa instalar o OH MY ZSH!"
else
   cp -v my-shutils ~/.my-shutils
   cat zshrc >> ~/.zshrc
   vim ~/.zshrc
fi

cp -v gitconfig ~/.gitconfig
cp -v screenrc ~/.screenrc
cp -v tmux.conf ~/.tmux.conf
cp -v vimrc ~/.vimrc
cp -v gitignore_global ~/.gitignore_global
cp -v Rprofile ~/.Rprofile
cp -v latexmkrc ~/.latexmkrc
cp -v Xresources ~/.Xresources

mkdir -p ~/.local/bin
cp -v querysrv ~/.local/bin 

cp -v kill-ssh-agent ~/.config/autostart-scripts/

vim amsmath.vba
