" (N)Vim Configuration File
" vim  : place in $HOME/.vimrc
" nvim : place in $HOME/.config/nvim/init.vim
" General settings
" ---------------------------------------------------------------------------
" drop vi support - kept for vim compatibility but not needed for nvim
set nocompatible

" number of lines at the beginning and end of files checked for file-specific vars
set modelines=0

" reload files changed outside of Vim not currently modified in Vim (needs below)
set autoread

" http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591
au FocusGained,BufEnter * :silent! !

" use Unicode
set encoding=utf-8
set fenc=utf-8
set fileencoding=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

" Set scrolloff https://youtu.be/wzrZPcwh-bE?t=182
set scrolloff=10

" Visual mode highlighting
highlight Visual cterm=reverse ctermbg=NONE

" errors flash screen rather than emit beep
set visualbell

" make Backspace work like Delete
set backspace=indent,eol,start

" don't create `filename~` backups
set nobackup

" don't create temp files
set noswapfile

" line numbers and distances
set relativenumber
set number

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Use highlighting when doing a search.
set hlsearch

" Show matching words during a search.
set showmatch

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

"
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent copyindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab

" Turning off auto indent when pasting text into vim
" https://stackoverflow.com/questions/2514445/turning-off-auto-indent-when-pasting-text-into-vim
" :set paste
" :set nopaste
" map F3 to pastetoggle
set pastetoggle=<F3>

" Set colorscheme for vim - issue to be solved tmux error
colorscheme ron
syntax on

" Map backtick in insert mode to double ' ' 
inoremap '' `

