#!/bin/bash

# Remove old VIM installation
rm -rf ~/.vim ~/.vimrc ~/.gvimrc

# Set directories
VIM_PLUGINS_DIR=~/.vim/pack/plugins/start
VIM_THEMES_DIR=~/.vim/pack/themes/start

# Create necessary directories
mkdir -p ~/.vim/{tmp,.undo,.backup,.swp} $VIM_PLUGINS_DIR $VIM_THEMES_DIR

# Install themes and plugins
themes_and_plugins=(
  "https://github.com/morhetz/gruvbox.git"
  "https://github.com/preservim/nerdtree.git"
  "https://github.com/tpope/vim-fugitive.git"
  "https://github.com/tpope/vim-surround.git"
  "https://github.com/preservim/nerdcommenter.git"
  "https://github.com/neoclide/coc.nvim.git"
  "https://github.com/ervandew/supertab.git"
  "https://github.com/mileszs/ack.vim.git"
  "https://github.com/airblade/vim-gitgutter.git"
  "https://github.com/tpope/vim-unimpaired.git"
  "https://github.com/jiangmiao/auto-pairs.git"
  "https://github.com/terryma/vim-multiple-cursors.git"
  "https://github.com/hashivim/vim-terraform.git"
  "https://github.com/github/copilot.vim.git"
  "https://github.com/junegunn/fzf.vim.git"
  "https://github.com/junegunn/fzf.git"
)

for repo in "${themes_and_plugins[@]}"; do
  echo "Installing $(basename $repo)"
  git clone $repo $VIM_PLUGINS_DIR/$(basename $repo .git)
done

# Copy configuration files
cp vimrc ~/.vimrc
cp gvimrc ~/.gvimrc

# Install coc.nvim dependencies
echo "Installing coc.nvim dependencies. It will fail if npm is not available."
(cd $VIM_PLUGINS_DIR/coc.nvim && npm install)

