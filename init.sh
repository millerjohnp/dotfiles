#!/bin/bash

# Exit on undefined variable usage.
set -u

# Files to re-alias
FILES="bashrc vimrc"

# Aliases for files
for FILE in $FILES; do
  ln -sf $HOME/code/dotfiles/$FILE $HOME/.$FILE;
done

mkdir -p $HOME/.vim/colors
git clone https://github.com/sickill/vim-monokai.git $HOME/.vim/tmp/backup/vim-monokai
mv $HOME/.vim/tmp/backup/vim-monokai/colors/monokai.vim ~/.vim/colors/

# Get bash completion for git
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O $HOME/.git-completion.bash

# Set up bashrc
source $HOME/.bashrc
