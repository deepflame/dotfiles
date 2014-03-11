#!/bin/bash

# http://stackoverflow.com/questions/5756524/how-to-get-absolute-path-name-of-shell-script-on-macos
SCRIPT_PATH=$(cd "$(dirname "$0")"; pwd)
cd $SCRIPT_PATH

# configuration
skip_files=( "init-ubuntu.sh" "install.sh" "setup-git.sh" "setup-rbenv.sh" "setup-vim.sh" "README.md" )
nodot_files=( bin )


function in_array() {
  variable="${1}"
  shift
  array=("${@}")

  for (( i = 0 ; i < ${#array[@]} ; i++ ))
  do
    if [ "${array[$i]}" == "$variable" ]
    then
      return 0 # 0 is true
    fi
  done

  return 1
}


for file in *; do
  if ! in_array "$file" ${skip_files[@]}
  then
    prefix="."
    if in_array "$file" ${nodot_files[@]}; then
      prefix=""
    fi

    source_file="$SCRIPT_PATH/$file"
    target_file="$HOME/$prefix$file"

    ln -snfv $source_file $target_file # s-ymbolic n-otfollow f-orce v-erbose
  fi
done

