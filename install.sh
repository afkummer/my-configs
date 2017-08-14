#!/bin/bash

# Instala o config do ssh.
if [ ! -d ~/.ssh ]
then
   mkdir -p ~/.ssh
fi
cp -v ssh-config ~/.ssh/config


# Instala o tema do oh-my-zsh.
if [ ! -d ~/.oh-my-zsh/custom/themes ]
then
   mkdir ~/.oh-my-zsh/custom/themes
fi
cp -v zsh-custom/themes/maran.zsh-theme ~/.oh-my-zsh/custom/themes

cp -v gitconfig ~/.gitconfig
cp -v screenrc ~/.screenrc
cp -v tmux.conf ~/.tmux.conf
cp -v vimrc ~/.vimrc
cat zshrc >> ~/.zshrc

