<<<<<<< HEAD
source ~/antigen.zsh

export TERM="xterm-256color"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ssh detect_virt status root_indicator background_jobs history date time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" "
POWERLEVEL9K_VCS_GIT_ICON=""
POWERLEVEL9K_LINUX_ICON=""
POWERLEVEL9K_SSH_ICON=" "
POWERLEVEL9K_HOME_ICON=""
POWERLEVEL9K_HOME_SUB_ICON=""
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_TAG_ICON=""



# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme agnoster-custom 
antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

source ~/.bash_aliases

# Tell Antigen that you're done.
antigen apply

=======
source ~/antigen.zsh

export TERM="xterm-256color"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ssh detect_virt status root_indicator background_jobs history time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" "
POWERLEVEL9K_VCS_GIT_ICON=""
POWERLEVEL9K_LINUX_ICON=""
POWERLEVEL9K_SSH_ICON=" "
POWERLEVEL9K_HOME_ICON=""
POWERLEVEL9K_HOME_SUB_ICON=""
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_TAG_ICON=""



# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme agnoster-custom 
antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

source ~/.bash_aliases

# Tell Antigen that you're done.
antigen apply

>>>>>>> 0bf4b5d85c6022a6105de8e21e54d005865eefd9
