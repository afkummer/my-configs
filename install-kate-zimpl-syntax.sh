#!/bin/bash

#
# Instala o tema para o Kate.
#

DEST="$HOME/.local/share/katepart5/syntax"
mkdir -p "$DEST"
wget http://zimpl.zib.de/download/zimpl-kate.xml
mv zimpl-kate.xml "$DEST" -v


#
# Instala o tema para o VIM.
#

mkdir -p "$HOME/.vim/ftdetect"
wget "https://raw.githubusercontent.com/1995parham/vim-zimpl/master/ftdetect/zimpl.vim"
mv zimpl.vim "$HOME/.vim/ftdetect/" -v

mkdir -p "$HOME/.vim/syntax"
wget "https://raw.githubusercontent.com/1995parham/vim-zimpl/master/syntax/zimpl.vim"
mv zimpl.vim "$HOME/.vim/syntax/" -v

