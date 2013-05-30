#!/bin/bash

echo -n "Enter your name: "
read git_user_name
git config --global user.name "$git_user_name"

echo -n "Enter your email: "
read git_user_email
git config --global user.email $git_user_email

# activate credential helper
if [ `uname` == "Darwin" ]; then
  git config --global credential.helper osxkeychain
else
  git config --global credential.helper 'cache --timeout=3600'
fi

# set vim as default editor, also fixes vim issue in osx
git config --global core.editor /usr/bin/vim

#git config --global credential.helper osxkeychain
#git config --global credential.helper 'cache --timeout=3600'
