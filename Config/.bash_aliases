alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias lk='ls -lF'
alias la='ls -A'
alias l='ls -CF'

alias htop='sudo htop'

alias unissh='ssh ***REMOVED***@shell.stud.informatik.uni-goettingen.de'

alias fuck='sudo $(fc -ln -1)'
alias please='sudo $(fc -ln -1)'
alias apt='sudo apt'

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

alias ..='cd ..'
alias ...='cd ../../'

function repeat()      
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do  # --> C-like syntax
        eval "$@";
    done
}

function takephotos()
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do  # --> C-like syntax
	ffmpeg -v error -f video4linux2 -s 1280x800 -i /dev/video0 -vf drawtext="fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf:text='%{localtime}':x=20:y=20:fontcolor=white" -vframes 1 ~/cameraphoto/$(date +%Y-%m-%d-%H-%M-%S).jpg
	sleep 1
    done
}
#sudo vim
alias svim='sudo vim'

#fun aliases
alias busy="cat /dev/urandom | hexdump -C"

alias takephoto='ffmpeg -v error -f video4linux2 -s 1280x800 -i /dev/video0 -vf drawtext="fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf:text='%{localtime}':x=20:y=20:fontcolor=white" -vframes 1 ~/cameraphoto/$(date +%Y-%m-%d-%H-%M-%S).jpg'
