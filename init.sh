#!/bin/bash

# Exit on undefined variable usage.
set -u

# Files to realias
FILES="vim"

# Aliases for files
for FILE in $FILES; do
  ln -s $HOME/code/dotfiles/$FILE $HOME/.$FILE;
done

# Make place for temp files and backup for vim.
mkdir -p $HOME/.vim/tmp/backup

# Set up the ~/.vimrc to point to my configuration
echo 'source ~/.vimrc/configuration.vim' > ~/.vimrc

git clone https://github.com/sickill/vim-monokai.git $HOME/.vim/tmp/backup
mv $HOME/.vim/tmp/backup/vim-monokai/colors/monokai.vim ~/.vim/colors/

# Get bash completion for git
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash $HOME/.git-completion.bash
