" magus0219's vimrc
"
set nocompatible
filetype off

" Plugins
" ========
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Theme plugin
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

" Search
" ctrlp is file fuzzy search
Plugin 'kien/ctrlp.vim'
" Ack.vim uses ack to search within files
Plugin 'mileszs/ack.vim'

" Navigate
"Nerdtree provides a file explorer, which is sometimes useful. Mostly ctrlp
"handles file finding though
Plugin 'scrooloose/nerdtree'

" Syntastic provides syntax info
Plugin 'scrooloose/syntastic'

" Git
" fugitive provides git bindings in Vim.  Don't use too much, but useful for
" blame
Plugin 'tpope/vim-fugitive'
"Show git info in the gutter, sad that it and syntastic fight for space though
Plugin 'airblade/vim-gitgutter'

" UI plugin
" Airline provides a stylish appearance for the styleline
Plugin 'vim-airline/vim-airline'

" Highlight plugin
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()

" Appearance
" ==========

" Switch syntax highlighting on
syntax on
" Set for theme
syntax enable
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

" Important Config
" ================
set nocompatible                " Use vim rather than vi settings
set encoding=utf-8              " standard encoding
set number                      " Its nice to see line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode
set autoread                    " Reload files changed outside vim
set hidden                      " Buffers can exist in the background
set history=1000                " Store lots of :cmdline history 
" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" General Config
" ==============
"
set showcmd                     " Show incomplete cmds down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set laststatus=2                " Always show status line
set splitright                  " Opens vertical split right of current
set splitbelow                  " Opens horizontal split below current

" Search Settings
" ===============
set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

" Indentation and Display
" =======================
" We want to replace tabs with spaces and have 4 space width indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set textwidth=80
set formatoptions+=mM

set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
" set wrap                            " Wrap lines

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

