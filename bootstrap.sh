#!/bin/bash

echo "Removing old VIM installation"
rm -rf ~/.vim
rm -rf ~/.vimrc
rm -rf ~/.gvimrc

export VIM_PLUGINS_DIR=~/.vim/pack/plugins/start
export VIM_THEMES_DIR=~/.vim/pack/themes/start
export CURRENT_DIR=$PWD

echo "Creating necessary directories"
mkdir -p ~/.vim/tmp ~/.vim/.undo/ ~/.vim/.backup/ ~/.vim/.swp/
mkdir -p $VIM_PLUGINS_DIR $VIM_THEMES_DIR

cd $VIM_THEMES_DIR

echo "Installing gruvbox theme"
git clone https://github.com/morhetz/gruvbox.git

cd $VIM_PLUGINS_DIR

echo "Installing nerdtree"
git clone https://github.com/preservim/nerdtree.git

echo "Installing ctrlp"
git clone https://github.com/ctrlpvim/ctrlp.vim.git

echo "Installing fugitive"
git clone https://github.com/tpope/vim-fugitive.git

echo "Installing surround"
git clone https://github.com/tpope/vim-surround.git

echo "Installing nerdcommenter"
git clone https://github.com/preservim/nerdcommenter.git

echo "Installing coc"
git clone https://github.com/neoclide/coc.nvim.git

echo "Installing supertab"
git clone https://github.com/ervandew/supertab.git

echo "Installing ack"
git clone https://github.com/mileszs/ack.vim.git

echo "Installing gitgutter"
git clone https://github.com/airblade/vim-gitgutter.git

echo "Installing unimpaired"
git clone https://github.com/tpope/vim-unimpaired.git

echo "Installing auto-pairs"
git clone git://github.com/jiangmiao/auto-pairs.git

echo "Installing vim-multiple-cursors"
git clone https://github.com/terryma/vim-multiple-cursors.git

echo "Installing vim-terraform"
git clone https://github.com/hashivim/vim-terraform.git

echo "Installing copilot.vim"
git clone https://github.com/github/copilot.vim.git

cd $CURRENT_DIR

cp vimrc ~/.vimrc
cp gvimrc ~/.gvimrc

echo "Installing coc.nvim dependencies. It will fail if npm is not available. "
cd ~/.vim/pack/plugins/start/coc.nvim && npm install
