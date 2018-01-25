# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump colored-man-pages git brew bundler docker gem history node npm ruby screen sudo tmux man vagrant httpie git-extras nvm docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

export HOME="$(eval echo ~$USER)"
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/MacGPG2/bin:/usr/local/opt/python/libexec/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/opt/X11/bin:/Applications/VMware Fusion.app/Contents/Library:Library/Python/2.7/bin"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='vim'
export LANG=en_GB.UTF-8
export DEFAULT_USER=aartem
export HOMEBREW_NO_ANALYTICS=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DISABLE_AUTO_TITLE="true"

# Bullet-train theme options
BULLETTRAIN_CONTEXT_DEFAULT_USER=$(whoami)
BULLETTRAIN_PROMPT_CHAR=☉
BULLETTRAIN_PROMPT_ROOT=true
BULLETTRAIN_PROMPT_ORDER=(
    time
    status
    context
    dir
    git
    cmd_exec_time
)

eval "$(hub alias -s)"

eval "$(rbenv init -)"

[ -e ~/.zsh_local ] && .  ~/.zsh_local

setopt ignoreeof

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
