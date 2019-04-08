#!/bin/zsh

#export TERM="xterm-256color"

# Powerlevel9K config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ssh detect_virt status root_indicator background_jobs history date time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="~ "
#POWERLEVEL9K_VCS_GIT_ICON=""
#POWERLEVEL9K_LINUX_ICON=""
#POWERLEVEL9K_SSH_ICON=" "
#POWERLEVEL9K_HOME_ICON=""
#POWERLEVEL9K_HOME_SUB_ICON=""
#POWERLEVEL9K_FOLDER_ICON=""
#POWERLEVEL9K_TAG_ICON=""


HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

alias ls="ls --color"
eval "$(dircolors ~/.dir_colors)"

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

#zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "ael-code/zsh-colored-man-pages"
zplug "chrissicool/zsh-256color"

zplug "zdharma/fast-syntax-highlighting"

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"

# Theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

zplug "zdharma/history-search-multi-word"

zplug "plugins/vscode", from:oh-my-zsh
zplug "plugins/cargo", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

setopt autocd
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
#autoload -Uz compinit
#compinit

source ~/.bash_aliases

