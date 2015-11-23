# enable plugin manager
source $HOME/dotfiles/antigen/antigen.zsh

# add plugins
antigen bundle zsh-users/zsh-syntax-highlighting # Syntax highlighting bundle.
antigen bundle zsh-users/zsh-completions src # add more zsh completions

# use 'pure'  prompt
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# apply antigen settings
antigen apply

# other plugins (non antigen)
source $HOME/dotfiles/z/z.sh
