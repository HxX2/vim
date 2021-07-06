#!/bin/bash

mv ~/.vim ~/.vimold
mv ~/.vimrc ~/.vimrcold
wget -q https://raw.githubusercontent.com/HxX2/vim/main/.vimrc 


git clone https://github.com/joshdick/onedark.vim ~/.vim/pack/onedark/opt/onedark.vim
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/dist/start/vim-lightline
mv ~/.vim/pack/onedark/opt/onedark.vim/autoload/lightline/colorscheme/onedark.vim ~/.vim/pack/dist/start/vim-lightline/autoload/lightline/colorscheme

git clone --depth 1 https://github.com/ryanoasis/vim-devicons ~/.vim/pack/dist/start/vim-devicons
git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/dist/start/vim-polyglot

echo -e "\n\e[1;32m my job is done now delete me \e[0m"
