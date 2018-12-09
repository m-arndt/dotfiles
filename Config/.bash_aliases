alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias please='sudo $(fc -ln -1)'

alias getupdates='printf "\n\nUpdating\n"; sudo apt update; printf "\n\nUpgrading\n"; sudo apt upgrade'

alias nullbrightness='echo 0 | sudo tee /sys/class/backlight/radeon_bl0/brightness'

# Reloads the bashrc file
alias bashreload="source ~/.bashrc && echo Bash config reloaded"

# Sync local files to Backup
alias localsync='/home/michael/Backup/localsync.sh'

#prettier mount
alias mount='mount | column -t'

#Opens a file with whatever program would open by double clicking on it in a GUI file explorer
#Usage: try someDocument.doc
alias try='gnome-open'


function repeat()      
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do  # --> C-like syntax
        eval "$@";
    done
}

#sudo vim
alias svim='sudo vim'

#fun aliases
alias busy="cat /dev/urandom | hexdump -C"

alias wincmd="cmd.exe /C"
alias winps="powershell.exe"

