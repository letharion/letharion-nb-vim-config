#!/bin/bash

SETTINGS_LOCATION=$(pwd);

# Less than perfect self-reference.
if [[ ! -d ${SETTINGS_LOCATION} || ! -f ${SETTINGS_LOCATION}/install.sh  || ! -d ${SETTINGS_LOCATION}/dotvim ]]; then
  echo 'Please execute the installer with the root of the repository as your current directory.';
  exit;
fi

if [[ (! -e $HOME/.vimrc || -L $HOME/.vimrc) && (! -e $HOME/.vim || -L $HOME/.vim) ]]; then
  cd $HOME
  ln -sfn ${SETTINGS_LOCATION}/dotvim/.vimrc 
  ln -sfn ${SETTINGS_LOCATION}/dotvim .vim
  cd -
else
  echo "One or more of the files ~/.vimrc or ~/.vim already exists and are not a symlink. Aborting.";
  exit;
fi

