#!/bin/bash

apt-get update

# base packages
apt-get install git vim zsh

# for rbenv
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev

# map capslock to ctrl key
setxkbmap -option caps:ctrl_modifier
