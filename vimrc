"set syntax highlighting on 
syntax on

"set theme
colorscheme Tomorrow-Night 

"set font
"set guifont=Menlo\ Regular:h18

"line numbers
set number

"coloured col at 90 
set colorcolumn=90

"set leader key
let mapleader=","
"map comma+s to reload vim
map <leader>s :source ~/.vimrc<CR>
"keep stuff in memory to make faster
set hidden
" Give a shortcut key to NERD Tree
map <F6> :NERDTreeToggle<CR>

"Show HIDDEN files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Autoclose nerdtree when it's the last thing and buffer is empty
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set history=100
"indenting logic
filetype indent on
set nowrap
set expandtab
set smartindent
set autoindent
"set search highlighting on
set hlsearch
"cancel search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
"re-open previously opened file using double comma
nnoremap <Leader><Leader> :e#<CR>
"show matching parenthesis
set showmatch
"set terminal colours to 256
let &t_Co=256
"lightline config
set laststatus=2
"remove vim's normal mode bar 
set noshowmode
"lightline theme
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

"set swap, backup and undo files to be written to my home directory
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdcommenter'
" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

