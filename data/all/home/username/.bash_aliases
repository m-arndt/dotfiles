alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ip='ip -c'

alias please='sudo $(fc -ln -1)'

#prettier mount
alias mount='mount | column -t'

function repeat()      
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do  # --> C-like syntax
        eval "$@";
    done
}

#thefuck alias
eval $(thefuck --alias)

