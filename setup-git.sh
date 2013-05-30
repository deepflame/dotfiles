#!/bin/bash

# set git user
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

# configure diff / merge tool
if [ `uname` == "Darwin" ]; then
  git config --global merge.tool opendiff
  git config --global diff.tool opendiff
else
  git config --global merge.tool meld
  git config --global diff.tool meld
fi
# disable ".orig" backups
git config --global mergetool.keepBackup false

# automatically track new branches
#git config --global push.default tracking
#git config --global branch.autosetupmerge true

# colorize output
git config --global color.ui auto

# aliases
#git config --global alias.st status
#git config --global alias.ci commit
#git config --global alias.co checkout
#git config --global alias.br branch
#git config --global alias.lg "log --format='%Cgreen%h %Cred%cr %Creset%s %Cblue%cn%Cgreen%d'"

