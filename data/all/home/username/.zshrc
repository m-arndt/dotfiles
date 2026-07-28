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
#eval "$(dircolors ~/.dir_colors)"

# Check if antidote is installed and uninstall it
if [[ -d ~/.antidote ]]; then
    rm -rf ~/.antidote
fi

# Check if zplug is installed and uninstall it
if [[ -d ~/.zplug ]]; then
    rm -rf ~/.zplug
fi

ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
[[ -d $ZSH_CACHE_DIR/completions ]] || mkdir -p $ZSH_CACHE_DIR/completions

# these need to be set BEFORE the plugin declarations below - some
# plugins/binaries (deja, eza) may live in these dirs, and other tools
# may rely on them being on PATH already when their plugin loads
if [ -d "$HOME/.local/bin" ] && [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    export PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "$HOME/.cargo/bin" ] && [[ ":$PATH:" != *":$HOME/.cargo/bin:"* ]]; then
    export PATH="$PATH:$HOME/.cargo/bin"
fi

# install zinit if it is not installed
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[[ ! -d $ZINIT_HOME ]] && mkdir -p "$(dirname "$ZINIT_HOME")"
[[ ! -d $ZINIT_HOME/.git ]] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# --- plugins (formerly plugins.txt) ---

#zinit light chrissicool/zsh-256color

# Theme
# zinit ice depth=1
# zinit light romkatv/powerlevel10k

zinit light MichaelAquilina/zsh-autoswitch-virtualenv

# better cd
# zinit light babarot/enhancd

zinit snippet OMZP::colorize
# zinit snippet OMZP::common-aliases
zinit snippet OMZP::command-not-found
zinit snippet OMZP::colored-man-pages

zinit snippet OMZL::git.zsh
zinit snippet OMZL::directories.zsh

# blockf prevents zsh-completions' fpath entries from being duplicated
# on every shell restart - standard convention for this plugin
zinit ice blockf
zinit light zsh-users/zsh-completions

# initialize completions once, now that fpath is fully populated
autoload -Uz compinit
compinit

zinit light clavelm/yt-dlp-omz-plugin

zinit light z-shell/zsh-eza

# zsh-ssh wraps the Tab key, so it needs to load after compinit above
zinit light sunlei/zsh-ssh

zinit light zsh-users/zsh-autosuggestions

zinit light Aloxaf/fzf-tab

zinit light zdharma-continuum/history-search-multi-word

zinit light zdharma-continuum/fast-syntax-highlighting

#zinit pack for dircolors-material
zinit pack for ls_colors

zinit light hlissner/zsh-autopair

zinit light popstas/zsh-command-time

zinit light MichaelAquilina/zsh-you-should-use

# --- end plugins ---

setopt autocd
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

if [[ -f ~/.config/starship.toml ]];then
    eval "$(starship init zsh)"
elif [[ -f ~/.p10k.zsh ]]; then
    source ~/.p10k.zsh
fi

if [ -d "$HOME/.sdkman" ]; then
    #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

if [ -f "/usr/share/bash-completion/completions/distrobox" ]; then
    autoload -U +X bashcompinit && bashcompinit
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
