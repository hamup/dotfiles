#! /bin/bash

#Initial Setting
SCRIPT_DIR=$(cd $(dirname $0); pwd)
VIMRC=$HOME/.vimrc
ZSHRC=$HOME/.zshrc
GVIMRC=$HOME/.gvimrc
VIMDIR=$HOME/.vim

#Definition of Symbolic Link
if [ -e  $VIMRC ]; then
  echo "$VIMRC already exists"
else
  ln -s $SCRIPT_DIR/.vimrc $HOME
fi

if [ -e  $ZSHRC ]; then
  echo "$ZSHRC already exists"
else
  ln -s $SCRIPT_DIR/.zshrc $HOME
fi

if [ -e  $GVIMRC ]; then
  echo "$GVIMRC already exists"
else
  ln -s $SCRIPT_DIR/.gvimrc $HOME
fi

if [ -e  $VIMDIR ]; then
  echo "$VIMDIR already exists"
else
  ln -s $SCRIPT_DIR/.vim $HOME
fi

#Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
