# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="subl ~/.zshrc"
# alias ohmyzshconfig="subl -n ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(battery brew gem heroku knife npm osx pip vagrant rbenv)

source $ZSH/oh-my-zsh.sh

# Customize paths
export PATH=/usr/local/bin:/usr/local/sbin:$PATH # add Honebrew binaries in front of PATH
export PATH=$PATH:~/.cabal/bin # adding Haskell package binaries to PATH
export PATH=$PATH:/usr/local/share/npm/bin/ # add NPM binaries to PATH

export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r17
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH # using Homebrew Python

# To enable shims and autocompletion, add rbenv init to your profile:
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# correct colors for VIM
~/bin/base16-shell/base16-default.dark.sh

