set nocompatible

set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set lazyredraw " redraw only when necessary
set showmatch " highlight matching [{()}]
set ignorecase
set smartcase
set autoindent
set ruler
set mouse=a
set autoread
set hlsearch " highlight search matches
set incsearch " search as characters are entered

syntax enable " enable syntax highlighting
set encoding=utf8
filetype plugin indent on

set expandtab " insert `softtabstop` spaces when hitting tab
set tabstop=2 " number of visual spaces per tab character
set softtabstop=2 " number of spaces inserted when tab is entered
set shiftwidth=2
set backspace=indent,eol,start
