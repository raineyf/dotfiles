set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'prettier/vim-prettier'

Plugin 'preservim/nerdtree'

Plugin 'haishanh/night-owl.vim'

Plugin 'mattn/emmet-vim'

call vundle#end()            " required
filetype plugin indent on    " required


set number
set relativenumber
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl

:set tabstop=4
:set shiftwidth=4
:set expandtab
let g:user_emmet_leader_key=','
