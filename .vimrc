" Vim plugin
call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'wojciechkepka/vim-github-dark'
    Plug 'vim-python/python-syntax'
call plug#end()

" Terminal
set term=st-256color

if !has('gui_running')
    set t_Co=16777216
endif

if has('termguicolors')
    set termguicolors
endif
colorscheme ghdark

" Indention Options
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
set smartindent

" Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase

" Performance Options
set complete-=i
set lazyredraw

" Text Rendering Options
set display+=lastline
set encoding=utf-8
set linebreak
syntax enable
syntax on
set wrap

" User Interface Options
set laststatus=2
set ruler
set wildmenu
set tabpagemax=10
set cursorline
set number
set mouse=a
set title
set background=dark

" Code Folding Options
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Miscellaneous Options
set autoread
set backspace=indent,eol,start
set confirm
set formatoptions+=j
set hidden
set history=500
set nomodeline
set noswapfile
set filetype=c
filetype on

let g:python_highlight_all = 1
let g:lightline = {'colorscheme': 'ghdark'}

" Automatically append closing characters
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>": ")"
inoremap        {  {}<Left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap        [  []<Left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
