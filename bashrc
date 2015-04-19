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
. $dotfiles/git/contrib/git-completion.bash
. $dotfiles/git/contrib/git-prompt.sh

# Dir Bookmarks
. $dotfiles/dirb/dirb.sh

# Tmuxinator
. $dotfiles/tmux/tmuxinator.bash

if [ $OSTYPE == "msys" ]
then
    . $dotfiles/ssh/env
fi
