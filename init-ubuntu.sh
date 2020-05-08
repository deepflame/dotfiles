#!/bin/bash

# install Ansible
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# run Ansible Playbook
sudo ansible-playbook ubuntu-playbook.yml

# set Zsh as default shell
echo "Enter your password to change the default shell:"
chsh -s $(which zsh)
