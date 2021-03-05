#!/bin/bash

echo "Removing old VIM installation"
rm -rf ~/.vim
rm -rf ~/.vimrc

echo "Creating necessary directories"
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors ~/.vim/repos
mkdir -p ~/.vim/tmp ~/.vim/.undo/ ~/.vim/.backup/ ~/.vim/.swp/

echo "Installing pathogen"
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "Installing onedark"
git clone https://github.com/joshdick/onedark.vim.git ~/.vim/repos/onedark.vim

cp -r ~/.vim/repos/onedark.vim/colors/onedark.vim ~/.vim/colors/onedark.vim
cp -r ~/.vim/repos/onedark.vim/autoload/onedark.vim ~/.vim/autoload/onedark.vim

echo "Installing nerdtree"
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

echo "Installing ctrlp"
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp

echo "Installing fugitive"
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/fugitive

echo "Installing surround"
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/surround

echo "Installing nerdcommenter"
git clone https://github.com/preservim/nerdcommenter.git ~/.vim/bundle/nerdcommenter

echo "Installing coc"
git clone https://github.com/neoclide/coc.nvim.git ~/.vim/bundle/coc

echo "Installing supertab"
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab

echo "Installing ack"
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack

echo "Installing gitgutter"
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/gitgutter

echo "Installing unimpaired"
git clone https://github.com/tpope/vim-unimpaired.git ~/.vim/bundle/vim-unimpaired

cp vimrc ~/.vimrc
