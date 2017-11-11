# Path to your oh-my-zsh installation.
export ZSH=/Users/Michael/.oh-my-zsh
export DEFAULT_USER=`whoami`

# nvm
#export NVM_DIR="$HOME/.nvm"
#  . "/usr/local/opt/nvm/nvm.sh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages colorize osx common-aliases wd zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/git/bin:/sw/bin:/usr/local/bin:/usr/local:/usr/local/sbin:/usr/local/mysql/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/CrossPack-AVR/bin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"
#VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

setopt no_complete_aliases

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Add env.sh... Contains alias and environment Variables
. ~/.oh-my-zsh/custom/env.sh

# Terminal Syntax Highlighting - Thank you based ZSH
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Michael/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/Michael/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Michael/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/Michael/google-cloud-sdk/completion.zsh.inc'; fi
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3.6
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
