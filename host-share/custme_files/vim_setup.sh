#!/bin/sh

# .vimrc move
mv ~/.vimrc ~/.vimrc_BK

# setup to vim setting
curl https://raw.githubusercontent.com/shinshin86/dotfiles/master/.vimrc > ~/.vimrc

# vimbackup setup
mkdir ~/vimbackup

# NeoBundle setup
# https://github.com/Shougo/neobundle.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/install.sh
sh ~/install.sh
rm -rf ~/install.sh

# Hybrid vim setup
# https://github.com/w0ng/vim-hybrid
curl  https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim > ~/.vim/colors/hybrid.vim
