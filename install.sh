#!/usr/bin/env bash

set -e

CONFIG=".dotbot.conf.yaml"
DOTBOT_DIR=".dotbot"
DOTBOT_PLUGIN_DIR=".dotbot-plugins"

DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${BASEDIR}"
git -C "${DOTBOT_DIR}" submodule sync --quiet --recursive
git submodule update --init --recursive "${DOTBOT_DIR}"

git -C "${DOTBOT_PLUGIN_DIR}" submodule sync --quiet --recursive
git submodule update --init --recursive "${DOTBOT_PLUGIN_DIR}"

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" \
  -d "${BASEDIR}" \
  -c "${CONFIG}" \
  -p "${DOTBOT_PLUGIN_DIR}/dotbot-git/git.py" \
  "${@}"
