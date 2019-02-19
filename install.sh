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
   cat zshrc >> ~/.zshrc
   vim ~/.zshrc
fi

cp -v gitconfig ~/.gitconfig
cp -v screenrc ~/.screenrc
cp -v tmux.conf ~/.tmux.conf
cp -v vimrc ~/.vimrc
cp -v gitignore_global ~/.gitignore_global
cp -v Rprofile ~/.Rprofile


