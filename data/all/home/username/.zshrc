#!/bin/zsh

#export TERM="xterm-256color"

export VISUAL=vim
export EDITOR="$VISUAL"

HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time

# fix non working keys
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[7~" beginning-of-line
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[8~" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

alias ls="ls --color"
eval "$(dircolors ~/.dir_colors)"


# Check if zplug is installed and uninstall it
if [[ -d ~/.zplug ]]; then
    rm -rf ~/.zplug
fi

# install antidote if it is not installed
if [[ ! -d ~/.antidote ]]; then
    git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
fi

# source antidote
source ~/.antidote/antidote.zsh

# set omz variables
ZSH=$(antidote path ohmyzsh/ohmyzsh)
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/oh-my-zsh"
[[ -d $ZSH_CACHE_DIR ]] || mkdir -p $ZSH_CACHE_DIR

# load antidote plugins
antidote load ~/.zsh_plugins.txt


setopt autocd
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

if [[ -f ~/.p10k.zsh ]]; then
    source ~/.p10k.zsh
fi


if [ -d "$HOME/.sdkman" ]; then
    #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

if [ -f "/usr/share/bash-completion/completions/distrobox" ]; then
    for file in /usr/share/bash-completion/completions/distrobox*; do
        source "$file";
    done
fi

# sourcing nvm installed from nvm at aur.archlinux.org
if [ -d "/usr/share/nvm" ]; then
    [[ -s "/usr/share/nvm/init-nvm.sh" ]] && source "/usr/share/nvm/init-nvm.sh"
fi

#if [ -d "$HOME/.nvm" ]; then
#   export NVM_DIR="$HOME/.nvm"
#   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#   [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#fi
