set nocompatible 	"Vim behavior, not Vi.
filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'https://github.com/vim-scripts/ScrollColors'
Plugin 'https://github.com/bling/vim-airline'
Plugin 'https://github.com/ervandew/supertab'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'https://github.com/kien/ctrlp.vim.git'
call vundle#end()
filetype plugin indent on

set encoding=utf-8	"Use UTF-8 encoding
set nobackup		"Don't backup
set nowritebackup	"Write file in place
set noswapfile		"Don't use swap files
set autoread		" Autoreload buffers
set autowrite		"Automatically save changes before switching buffers
syntax enable		"Enable syntax highlight

" History, Cursor, Rulers
set history=50
set laststatus=2	" always display the status line
set ruler		" show the cursor position at all times
set number		" show line numbers
set showcmd		" display incomplete commands
set cursorline		" Highlight current cursor line
set shell=$SHELL	" Default shell is ZSH

" Tabs and white spaces
set nowrap		" Don't wrap lines
set tabstop=2		" Tabs are always 2 spaces
set expandtab		" Expand tabs into spaces
set shiftwidth=2	" Reindent with 2 spaces (using <<)

" Search
set hlsearch		" Highlight matches
set incsearch		" Incremental searching
set ignorecase		" Searches are case insensitive
set smartcase		" ... unless they contain at least one capital letter

" Appearance
set background=dark
set guifont=Menlo\ bold:h14
set linespace=2
set visualbell

" spell checking
" setlocal spell spelllang=en_us

"change leader key to <SPACE>
let mapleader = "\<Space>"
inoremap jk <ESC>

"Fix spelling with <leader>f
nnoremap <leader>f 1z=

" Toggle spelling visuals with <leader>s
nnoremap <leader>s :setlocal spell!

" Delete trailing space
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

"add powerline fonts
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" enable/disable bufferline integration
let g:airline#extensions#bufferline#enabled = 1

"enable/disable fugitive/lawrencium integration
let g:airline#extensions#branch#enabled = 1

"configure which whitespace check to enable
let g:airline#extensions#whitepsace#checks = ['indent', 'trailing', 'mixed-indent-file']

"configure the maximum number of lines where whitespace checking is enabled
let g:airline#extensions#whitespace#max_lines = 500
