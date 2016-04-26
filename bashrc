export dotfiles=~/dotfiles

# Bash
. $dotfiles/bash/env
. $dotfiles/bash/config
. $dotfiles/bash/aliases

# Ruby
. $dotfiles/ruby/aliases

# Git
. $dotfiles/git/aliases
. $dotfiles/git/env

# Dir Bookmarks
. $dotfiles/dirb/dirb.sh

# Tmuxinator
. $dotfiles/tmux/tmuxinator.bash

if [ $OSTYPE == "msys" ]
then
    . $dotfiles/ssh/env
fi

if [ -f ~/git_aliases ]
then
    . ~/git_aliases
fi
