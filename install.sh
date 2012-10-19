#!/bin/bash

# http://stackoverflow.com/questions/5756524/how-to-get-absolute-path-name-of-shell-script-on-macos
SCRIPT_PATH=$(cd "$(dirname "$0")"; pwd)
cd $SCRIPT_PATH

for file in *; do
  if [ "$file" != "install.sh" ]; then
    source_file="$SCRIPT_PATH/$file"
    target_file="$HOME/.$file"

    ln -sniv $source_file $target_file # s-ymbolic n-otfollow i-nteractive v-erbose
  fi
done

