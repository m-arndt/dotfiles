#!/bin/zsh

#export TERM="xterm-256color"

export VISUAL=vim
export EDITOR="$VISUAL"

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

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'


zplug "ael-code/zsh-colored-man-pages"
zplug "chrissicool/zsh-256color"

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

zplug "zdharma-continuum/history-search-multi-word"
zplug "zdharma-continuum/fast-syntax-highlighting"

# Theme
#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug romkatv/powerlevel10k, as:theme, depth:1

#better cd
zplug "b4b4r07/enhancd"

zplug "plugins/rust", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
#zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/pipenv", from:oh-my-zsh
zplug "plugins/ripgrep", from:oh-my-zsh
zplug "plugins/thefuck", from:oh-my-zsh

zplug "DarrinTisdale/zsh-aliases-exa"

zplug "MichaelAquilina/zsh-autoswitch-virtualenv"

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
autoload -Uz compinit
compinit

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

#if [ -d "$HOME/.nvm" ]; then
#   export NVM_DIR="$HOME/.nvm"
#   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#   [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#fi
