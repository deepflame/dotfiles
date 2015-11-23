
# Plugins
source $HOME/.zsh/plugins.zsh

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

# To enable shims and autocompletion, add rbenv init to your profile:
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

