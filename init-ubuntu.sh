#!/bin/bash

sudo apt-get update

# base packages
sudo apt-get install git vim zsh

# for rbenv
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev

# add lazygit
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get install lazygit

# Crystal programming language
curl -sL "https://keybase.io/crystal/pgp_keys.asc" | sudo apt-key add -
echo "deb https://dist.crystal-lang.org/apt crystal main" | sudo tee /etc/apt/sources.list.d/crystal.list
sudo apt-get update
sudo apt-get install crystal

# Go lang
wget https://dl.google.com/go/go1.12.4.linux-amd64.tar.gz

# map capslock to ctrl key
setxkbmap -option caps:ctrl_modifier

