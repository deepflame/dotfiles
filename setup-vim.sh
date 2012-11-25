#!/bin/bash

vim -u ~/.vimrc.bundles +BundleInstall! +BundleClean +qall
echo "updated plugins using Vundle"
