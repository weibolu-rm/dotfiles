" --------------------- Plugins (VimPlug) -----------------------
call plug#begin('~/.config/nvim/plugged')
    " Tree
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'
    " Utils
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-surround'
    " Syntax highlight
    Plug 'sheerun/vim-polyglot'
    " Coloscheme
    Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord


" ---------------------- General Settings -----------------------
filetype plugin on

syntax on
set encoding=utf-8

" space as leader key
nnoremap <SPACE> <Nop>
let mapleader = " "

set backspace=indent,eol,start
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set clipboard^=unnamed,unnamedplus
set mouse=nv
set nowrap hidden nobackup nowritebackup noshowmode
set splitright splitbelow
set ruler
set showcmd
set errorformat^=%-GIn\ file\ included\ %.%#
set number relativenumber
set noswapfile

set autoindent
set smartindent

autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python


" --------------------- Quick Build Shortcuts -----------------------
autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
autocmd filetype cpp nnoremap <f5> :w <bar> :!g++ -std=c++17 % -o %:r && ./%:r <cr>
autocmd filetype c nnoremap <f5> :w <bar> :!make %:r && ./%:r  <cr>
autocmd filetype java nnoremap <f5> :w <bar> :!javac % && java %:r <cr>
autocmd filetype tex nnoremap <f5> :w <bar> :!pdflatex % <cr>

" --------------------- Remaps ---------------------------------------
map <Leader>e :NvimTreeToggle <CR>
