Vim dotfiles
============

## My vim setup:

![prompt](https://cdn.discordapp.com/attachments/833937244627795978/865834804662632498/unknown.png)


**Table of Contents**

<!-- toc -->

- [About](#about)
  * [Installing](#installing)
  * [Uninstalling](#uninstalling)
  * [Post-installation](#post-installation)
- [Plugins Used](#plugins-used)

<!-- tocstop -->

## About

### Installing

Just run the following commands via terminal to get perfectly set up:

```console
wget https://raw.githubusercontent.com/HxX2/vim/main/setvim.sh ; chmod +x setvim.sh ; ./setvim.sh
```

### Uninstalling

Run this command to revert back to the old vim configuration:

```console
rm -r .vim .vimrc ; mv ~/.vimold ~/.vim ; mv ~/.vimrcold ~/.vimrc
```

### Post-installation

In the `.vimrc` file line 81 for gcc compilet make sure to change "zsh" to your dafault shell

## Plugins Used
* [github.com/joshdick/onedark.vim](https://github.com/joshdick/onedark.vim)
* [github.com/itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)
* [github.com/ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
* [github.com/sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)