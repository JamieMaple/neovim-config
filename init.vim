" genera config

set ignorecase
set number
set relativenumber
set cursorline
set ruler

" indent config
filetype indent on
set ci
" tabs
syntax enable
filetype plugin indent on
" global tabs
set smarttab
set ts=4 sts=4 sw=4 et

autocmd filetype html setlocal ts=2 sw=2
autocmd filetype css setlocal ts=2 sw=2
autocmd filetype javascript setlocal ts=2 sw=2
autocmd filetype typescript setlocal ts=2 sw=2

filetype on
syntax on

set encoding=UTF-8

" plugins

call plug#begin('~/.config/nvim/plugged')

" make sure you are using single quotes
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mileszs/ack.vim' " [doc](https://github.com/mileszs/ack.vim
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

" color themes
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" javascript & typescript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'https://github.com/Quramy/tsuquyomi.git'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'moll/vim-node'

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

if (has("termguicolors"))
    set termguicolors
endif

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

" Theme
" recommend fonts: losevka Extralight Italic Nerd Font
syntax enable
colorscheme molokai

call fugitive#head()

" for nerd tree
let g:airline_theme='molokai'

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" for airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" for typescript
let g:tsuquyomi_completion_detail = 1

" key map

map <C-n> :NERDTreeToggle<CR>

" disable arrows
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" clear search
nnoremap <silent> <C-l>  :<C-u>noh<CR><C-l>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyALign)



