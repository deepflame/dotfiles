#!/bin/bash

echo -n "Enter your name: "
read git_user_name
git config --global user.name "$git_user_name"

echo -n "Enter your email: "
read git_user_email
git config --global user.email $git_user_email

