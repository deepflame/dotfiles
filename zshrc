# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(brew git gem npm osx pip vagrant rbenv)

source $ZSH/oh-my-zsh.sh

# Aliases
source $HOME/.zsh/aliases

# Customize PATHs
export PATH=/usr/local/bin:$PATH            # add Honebrew binaries in front of PATH
export PATH=/usr/local/sbin:$PATH
export PATH=./bin:$PATH                     # local bin directory for bundler binstubs (attention!)
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.cabal/bin          # Haskell package binaries
export PATH=$PATH:/usr/local/share/npm/bin/ # global NPM binaries

export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH # using Homebrew Python
export GOPATH=~/Developer/go

# To enable shims and autocompletion, add rbenv init to your profile:
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

