" Set the apprearance
language en_US.UTF-8				" Set language
colorscheme evening				" Set theme
set nocompatible                                " Set nocompatible
set lines=35 columns=120	                " Set the window&font size
set guifont=Powerline_Consolas:h13              " Set the font
set showmode                                    " Show current mode
set autoindent                                  " Set auto alignment
set expandtab                                   " Tab to space
set softtabstop=4                               " Tab = 2 space         
set number                                      " Show line number
set cursorline                                  " Highlight current line    
set showmatch                                   " Bracket matching
set hlsearch                                    " Highlight keyword
set incsearch                                   " Incremental search
set ignorecase                                  " Ignore upper/lower case
set smartcase                                   " Smart case search
"set spell spelllang=en_us                       " Spelling check
set scrolloff=5                                 " Scroll distance
set noswapfile                                  " Do not create swap-file
set wrap                                        " Set change line automatically
set autoread                                    " Auto update file
set guioptions-=T                               " Hide tool bar
set guioptions-=m                               " Hide menu bar
set ambiwidth=double                            " Set double width display
filetype indent on                              " According to type indentation
let laststatus=2                                " Status line position
syntax on                                       " Grammar high light

" Encoding setting
set encoding=utf-8
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
set langmenu=en_US.UTF-8
set fileencoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set termencoding=cp936

" Plugins management
call plug#begin('$VIM/vim82/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Parentheses completion
Plug 'Raimondi/delimitMate'
" Show the side bar
Plug 'scrooloose/nerdTree'
" Airline dependency to see the branch in section_b
Plug 'tpope/vim-fugitive'
call plug#end()

" Vim-Airline Setting
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Mapping setting
nnoremap <F9> :bn<cr>
nnoremap <F10> :bp<cr>
nnoremap <C-w> :bd<cr>

" powerline symbols
let g:airline_theme = 'molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.dirty='⚡'
"let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_section_b = '%{strftime("%H:%M")}'
"let g:airline_section_c = '%{getcwd()}'
let g:airline_section_y = '[%{&fileformat}]'
let g:airline_section_z = '%p%% %l :  %c'

" Vimtweak64.dll
au GUIEnter * call libcallnr("vimtweak64.dll", "SetAlpha", 200)
au GUIEnter * NERDTree
