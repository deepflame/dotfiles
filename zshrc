
# Plugins
source $HOME/.zsh/plugins.zsh

# Functions

## Checks if a name is a command, function, or alias.¬
function is-callable {
	(( $+commands[$1] )) || (( $+functions[$1] )) || (( $+aliases[$1] ))
}

# ls
if is-callable 'dircolors'; then
	# GNU Core Utilities
	if [[ -s "$HOME/.dir_colors" ]]; then
		eval "$(dircolors --sh "$HOME/.dir_colors")"
	else
		eval "$(dircolors --sh)"
	fi
	alias ls='ls --group-directories-first --color=auto'
else
	# BSD Core Utilities
	# Define colors for BSD ls.
	export LSCOLORS='exfxcxdxbxGxDxabagacad'

	# Define colors for the completion system.
	export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

	alias ls="ls -G"
fi

# remap caps lock to ctrl
if [[ "$(uname -s)" = "Linux" ]]; then
	setxkbmap -option caps:ctrl_modifier
fi

# configure history
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt sharehistory
setopt extendedhistory

# Aliases
source $HOME/.zsh/aliases.zsh

# Customize PATHs
export PATH=/usr/local/bin:$PATH            # add Honebrew binaries in front of PATH
export PATH=/usr/local/sbin:$PATH
export PATH=./bin:$PATH                     # local bin directory for bundler binstubs (attention!)
export PATH=$PATH:$HOME/bin                 # ~/bin directory
export PATH=$PATH:$HOME/.cabal/bin          # Haskell package binaries
export PATH=$PATH:/usr/local/share/npm/bin  # global NPM binaries
export PATH="$HOME/.rbenv/bin:$PATH"        # rbenv

export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH # using Homebrew Python
export GOPATH=~/Developer/go

export GEM_EDITOR='vim'

# Tooling

# travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

# rbenv shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# setup nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# set Docker env
#eval "$(docker-machine env dev)"

# add kubectl completion
[ -x "$(command -v kubectl)" ] && source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setxkbmap -option caps:ctrl_modifier

