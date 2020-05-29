" ------ CONFIG ------
set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

set autoindent
set ruler
set laststatus=2
set showtabline=2
set splitbelow
set confirm
set visualbell
" set cmdheight=2
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
nnoremap <C-L> :nohl<CR><C-L>
 
" ------   VUNDLE ------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'dracula/vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'lervag/vimtex'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'https://github.com/Shougo/neoinclude.vim/'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'zchee/deoplete-clang'
Plugin 'deoplete-plugins/deoplete-jedi'
call vundle#end()            " required

" ------ PLUGINS ------
let g:deoplete#enable_at_startup = 1
autocmd CompleteDone * silent! pclose!

let g:bufExplorerShowNoName=1 "show empty buffers

let g:netrw_liststyle = 3
let g:netrw_banner = 0

set noshowmode
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

color seoul256
"color dracula
set cursorline

" ------ MAPPINGS ------
let mapleader=" "
nnoremap <space> <nop>

"autocomplete popup
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

"faster buffers
nnoremap <leader>jk :ToggleBufExplorer<CR>
nnoremap <leader>jj :bn<CR>
nnoremap <leader>jj :bn<CR>
nnoremap <leader>kk :bp<CR>

"tabs
nnoremap <leader>ll gt
nnoremap <leader>LL :tabm +1<CR>
nnoremap <leader>hh gT
nnoremap <leader>HH :tabm -1<CR>
nnoremap <leader>oo :tabe<CR>

nnoremap <leader>ee :Explore<CR>
nnoremap <leader>RR :source ~/.vimrc<CR>
nnoremap Q :q<CR>
