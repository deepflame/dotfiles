
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

# Aliases
source $HOME/.zsh/aliases.zsh

# Customize PATHs
export PATH=/usr/local/bin:$PATH            # add Honebrew binaries in front of PATH
export PATH=/usr/local/sbin:$PATH
export PATH=./bin:$PATH                     # local bin directory for bundler binstubs (attention!)
export PATH=$PATH:$HOME/bin                 # ~/bin directory
export PATH=$PATH:$HOME/.cabal/bin          # Haskell package binaries
export PATH=$PATH:/usr/local/share/npm/bin  # global NPM binaries

export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH # using Homebrew Python
export GOPATH=~/Developer/go

# Tooling

# travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

# rbenv shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# set Docker env
eval "$(docker-machine env dev)"

