set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noerrorbells
set ruler
set nohls
set wildmenu
set number
set numberwidth=5
set scrolloff=10
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set nowrap
set nocp

syntax on
filetype plugin on 

" Backup
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
set backup                       " enable backups

" Search options
set incsearch
set showmatch
set smartcase
set ignorecase

" Soft/hard wrapping
set nowrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=79
set sidescroll=5

" Misc
set encoding=utf-8
set autoindent
filetype plugin indent on

autocmd BufEnter *.py set ai sw=4 ts=4 sta et fo=croql

" space / shift-space scroll in normal mode
noremap <S-space> <C-b>
noremap <space> <C-f>

"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" Use the arrows to something usefull
map <C-right> :bn<cr>
map <C-left> :bp<cr>

"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

