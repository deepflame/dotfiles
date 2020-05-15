
# enable zplug
export ZPLUG_HOME=$HOME/.zplug
[ ! -d "$ZPLUG_HOME" ] && git clone https://github.com/zplug/zplug $ZPLUG_HOME
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-completions" # add more zsh completions
zplug "zsh-users/zsh-syntax-highlighting", defer:2 # Syntax highlighting bundle.

# add kubectx/kubens scripts
#zplug "unixorn/kubectx-zshplugin"

# use 'pure'  prompt
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure", use:pure.zsh, as:theme

zplug "astefanutti/kubebox", \
    from:gh-r, \
    as:command, \
    rename-to:kubebox

zplug "rancher/cli", \
    from:gh-r, \
    as:command, \
    rename-to:rancher

zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*linux*amd64*"

zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq

zplug "denoland/deno", \
    from:gh-r, \
    as:command, \
    use:"*x86_64*linux*"

# emoji-cli
zplug "b4b4r07/emoji-cli", \
    on:"stedolan/jq"

# z - jump around
zplug "rupa/z", use:z.sh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

#zplug load --verbose
zplug load
