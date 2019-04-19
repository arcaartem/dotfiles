setopt ignoreeof

#TODO: replace below with full path
export ZSH=~/.oh-my-zsh

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
HYPHEN_INSENSITIVE="true"
ZSH_THEME="bullet-train"
ZSH_TMUX_AUTOSTART=true
plugins=(autojump brew bundler colored-man-pages docker docker-compose gem git git-extras history httpie man npm pip python ruby screen sudo tig tmux vagrant rvm)
FZF_ALT_C_COMMAND="command find -L . -mindepth 1 \( -path '*/\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' -o -path '*/node_modules/*' \) -prune -o -type d -print"

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

source $ZSH/oh-my-zsh.sh

# TODO: set home directory
export HOME="$(eval echo ~$USER)"
export PATH="$PATH:$HOME/bin:/usr/local/sbin:/usr/local/opt/python/libexec/bin:/opt/local/bin:/opt/local/sbin:/opt/X11/bin"

export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='nvim'
export LANG=en_GB.UTF-8
export DEFAULT_USER=aartem
export HOMEBREW_NO_ANALYTICS=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DISABLE_AUTO_TITLE="true"
export npm_config_python=/usr/bin/python
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/sqlite/include"

alias vim="nvim"
alias vi="nvim"

[ -e ~/.zsh_local ] && .  ~/.zsh_local
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#alias preview="fzf --preview 'bat --color \"always\" {}'"
## add support for ctrl+o to open selected file in VS Code
#export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort'"
# Bullet-train theme options
eval "$(hub alias -s)"


#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
