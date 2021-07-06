"==== vim_conf ====

syntax on
set autoindent
set tabstop=8
set number
set incsearch
set ignorecase
set smartcase
set nohlsearch
set nobackup
set noswapfile
set nowrap
set shortmess+=F
set noshowmode
set cursorline
set mouse=a

"==== transparent_background ====

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:none = { "gui": "NONE", "cterm": "NONE", "cterm16": "0" }
    let background = s:none
    autocmd ColorScheme * call onedark#set_highlight("Terminal", { "bg": s:none }) 
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "bg": s:none }) 
  augroup END
endif

"==== onedark_conf ====

let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

"==== vim-polyglot_conf ====

let g:polyglot_disabled = ['sensible']

"==== vim8_packages ====

packadd! onedark.vim
colorscheme onedark

"==== lightline_conf ====

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ 'component_function': {
  \   'filetype': 'MyFiletype',
  \   'fileformat': 'MyFileformat',
  \ }, 
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
  \ }

  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' . &filetype : 'no ft') : ''
  endfunction
  
  function! MyFileformat()
    return winwidth(0) > 70 ? ( WebDevIconsGetFileFormatSymbol() . ' ' . &fileformat ) : ''
  endfunction

set laststatus=2

"==== devicons_conf ====

set encoding=UTF-8

"==== vim_SKs ====

inoremap { {}
inoremap [ []
inoremap ( ()
inoremap " ""
inoremap ' ''
map <silent> <space>e :Explore <CR>
map <silent> <space>t :rightb vert term <CR>
map <silent> <F5> :w <CR> :bel term zsh -c "gcc -Wall -Werror -Wextra % -o %< && ./%<" <CR>  
map <silent> <space>n :w <CR> :rightb vert term zsh -c "norminette %" <CR>
 
"==== netrw_conf ====

let g:netrw_keepdir=0
