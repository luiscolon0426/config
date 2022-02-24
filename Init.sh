#!/usr/bin/env bash
rm ~/.bashrc ~/.bash_profile
ln -s ~/Config/.bashrc ~/.bashrc
ln -s ~/Config/.bash_profile ~/.bash_profile



sudo apt install neovim
# Attempt to move the vimrc file
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
ln -f init.vim ~/.config/nvim/init.vim
echo linked the .vimrc

# Install vim plug
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > ~/.config/nvim/autoload/plug.vim

touch ~/.gitconfig
ln -f .gitconfig ~/.gitconfig
echo linked git config

# Make dirs for the vimrc
mkdir ~/.backup

echo making bundle and auto load folders
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle
echo made autoload and bundle dir in ~/.config/nvim


# cd into directory and download all of the plugins
echo downloading git repos for plugins
cd ~/.config/nvim/bundle
echo cloning ctrlp
git clone https://github.com/ctrlpvim/ctrlp.vim.git
echo cloning nerdtree
git clone https://github.com/scrooloose/nerdtree.git
echo cloning superTab
git clone https://github.com/ervandew/supertab.git
mkdir ~/.config/nvim/colors
echo cloning solarized
git clone https://github.com/altercation/vim-colors-solarized.git
ln vim-colors-solarized/colors/solarized.vim ~/.config/nvim/colors/solarized.vim
echo cloning syntax plugins
git clone https://github.com/exu/pgsql.vim.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/leafgarland/typescript-vim.git
