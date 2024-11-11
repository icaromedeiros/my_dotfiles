" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:

" git
NeoBundle 'tpope/vim-fugitive'
" file/directory handling
NeoBundle 'scrooloose/nerdtree'
" fuzzy file/directory finder, etc
NeoBundle 'kien/ctrlp.vim'
" parenthesis made easy
NeoBundle 'tpope/vim-surround'
" awesome status line
NeoBundle 'bling/vim-airline'
" powerline
NeoBundle 'Lokaltog/powerline'
NeoBundle 'Lokaltog/powerline-fonts'
" syntax awesomeness 4all
NeoBundle 'scrooloose/syntastic'
" color schemes
NeoBundle 'nanotech/jellybeans.vim'
" Python autocompletion
NeoBundle 'davidhalter/jedi-vim'
" PEP8 and python-flakes checker
NeoBundle 'nvie/vim-flake8'
" Completion in insert mode, just using tab
NeoBundle 'ervandew/supertab'
" Scala highlighting
NeoBundle 'derekwyatt/vim-scala'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"End NeoBundle Scripts-------------------------

""""""""""""""""""""""""""
" Pretty great differences
""""""""""""""""""""""""""

" syntax highlighting
syntax on

" map leader -- for shortcuts: \ is far way , is better
let mapleader=","

" no need to SHIFT to use commands :)
nnoremap ; :

""""""""
" Search
""""""""

" highlighted search results
set hlsearch
" ignore case when searching if string being search is all lower case
set ignorecase
set smartcase

" ,<space> disables last search highlighting
nnoremap <leader><space> :noh<cr>

""""""""""""""""
"" Other options
""""""""""""""""

" no hidden buffers
set nohidden

" no swaps
set noswapfile

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
" line numbers
set nu
" always show status bar
set ls=2
" use many muchos levels of undo
set undolevels=1000
" shows tabs and trailing spaces
set list
set listchars=tab:▸\ ,trail:·
" don't beep
set visualbell
set noerrorbells

function! TrimWhiteSpace()
  :retab
  %s/\s*$//
  ''
:endfunction
map <leader>w :call TrimWhiteSpace()<CR>

"""""""""""""""""""""""""""""
"" NeoBundle packages options
"""""""""""""""""""""""""""""

" syntastic options
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args='--ignore=E501,W293'

" To debug syntastic
"let g:syntastic_debug = 3

" vim-airline options
let g:airline#extensions#tabline#enabled = 1
" Show only filename, not full path
let g:airline#extensions#tabline#fnamemod = ':p:t'
" Do not show tab number
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts=1

" powerline options
let g:Powerline_symbols = 'fancy'

""""""""""""""
"" Visual shit
""""""""""""""

colorscheme jellybeans

" jellybeans options
let g:jellybeans_overrides = {
\    'Search': { 'guifg': 'e32636', 'guibg': '302028',
\                'ctermfg': 'Black', 'ctermbg': 'Yellow',
\                'attr': 'bold' },
\    'Todo': { 'guifg': 'f63232', 'guibg': 'f1e905',
\                'ctermfg': 'Magenta', 'ctermbg': 'Yellow',
\                'attr': 'bold' }
\}

" The chosen one because it has italic, bold, etc
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h20
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

"""""""""""""""""""""""""""""
"" File and NERD-Tree options
"""""""""""""""""""""""""""""

nmap <leader>n :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

" ignored files
set suffixes=.swp,.bak,~,.pyc,.class,.so,.zip,.DS_Store,.orig

" NERDTree ignore the same files
let NERDTreeIgnore = ['__pycache__']
for suffix in split(&suffixes, ',')
    let escaped_suffix = [ escape(suffix, '.~') . '$' ]
    let NERDTreeIgnore += escaped_suffix
endfor

""""""""""
"" Flake8
""""""""""

" run pep8+pyflakes validator
autocmd FileType python map <buffer> ,8 :call Flake8()<CR>
" rules to ignore (example: "E501,W293")
let g:flake8_ignore="E501,W293"
" don't let pyflakes allways override the quickfix list
let g:pyflakes_use_quickfix = 0

""""""""""""""""""""""""""""""""""
"" LIST OF SHORTCUTS AND MNEMONICS
""""""""""""""""""""""""""""""""""

" <leader>w(HITESPACE) trim whitespaces
" <leader>n(ERDTree)
" <leader><space> clear search highlight (equals to :noh)
