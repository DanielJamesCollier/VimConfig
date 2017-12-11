" Daniel Collier's .vimrc ! 

" vundle package manage
"------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" {

       "Added nerdtree
	Plugin 'scrooloose/nerdtree'
	
       "C++ syntax highlighting
	Plugin 'octol/vim-cpp-enhanced-highlight'
       
       "File renamer plugin
	Plugin 'qpkorr/vim-renamer'

" }
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"------------------------------------------------

" ignore case when searching with /
set ignorecase

" if you search with / and type a uppercase case sensitive matching will be turned on
set smartcase


" Turn syntax highlighting on
syntax on

" turn on line numbering
set number

" enable plugins
filetype plugin on

" always split to the right
set splitright


" Tab stuff
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on

" disable swap files
set noswapfile


" add a key map that allows you to navigate splits using ctrl + [hjkl]
" instead of ctrl + shift + [hjkl]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" change the colour of line numbers to DarkGrey
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" disable comments being carried on when pressing enter
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

"create new line below current line without leaving normal mode or moving cursor
noremap - m`o<Esc>``

"create new line above current line without leaving normal mode or moving cursor
noremap _ m`O<Esc>``
