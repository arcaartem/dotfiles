#!/bin/bash

REPO_BASE=~/projects
DOTFILES_BASE=${REPO_BASE}/arcaartem/dotfiles

md -p ${REPO_BASE}
pushd brew
brew bundle
popd

git submodule update --init
git config --global user.name Arca Artem
git config --global user.email arca.artem@gmail.com
git config --global commit.gpgsign true

[[ -d ~/.oh-my-zsh ]] || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
if [ ! -d ${REPO_BASE}/powerline/fonts ]; then
    git clone git@github.com:powerline/fonts.git ${REPO_BASE}/powerline/fonts
    pushd ${REPO_BASE}/powerline/fonts
    ./install.sh
    popd
fi
[[ -f ~/.zshrc ]] || ln -s ${DOTFILES_BASE}/zsh/.zshrc ~/.zshrc
[[ -f ~/.tmux.conf ]] || ln -s ${DOTFILES_BASE}/tmux/.tmux.conf ~/.tmux.conf
[[ -d ~/.tmux ]] || ln -s ${DOTFILES_BASE}/tmux/tmuxfolder ~/.tmux
[[ -d ~/.config/nvim ]] || ln -s ${DOTFILES_BASE}/vim/vimfolder ~/.config/nvim

[[ -f ~/.oh-mh-zsh/custom/themes/bullet-train.zsh-theme ]] || curl -o ~/.oh-my-zsh/custom/themes/bullet-train.zsh-theme https://raw.githubusercontent.com/caiogondim/bullet-train.zsh/master/bullet-train.zsh-theme
