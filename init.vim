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
filetype plugin indent on
" global tabs
set smarttab
set smartindent
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
Plug 'mileszs/ack.vim' " [doc](https://github.com/mileszs/ack.vim)
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe' " with typescript and node install

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

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" haskell
Plug 'https://github.com/neovimhaskell/haskell-vim.git'

call plug#end()

" ycm
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" ale
let b:ale_linters = {
\   'javascript': ['eslint']
\ }
let g:ale_fixers = ['prettier', 'eslint']
let g:ale_linters_explicit = 1

" auto save
" let g:ale_fix_on_save = 1

" Theme
" recommend fonts: losevka Extralight Italic Nerd Font
if (has("termguicolors"))
    set termguicolors
endif
syntax enable
colorscheme molokai

call fugitive#head()

" for nerd tree
let g:airline_theme='molokai'

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let NERDTreeShowHidden = 1 " toggle show hidden files, `shift - i`
" ale
let g:ale_echo_msg_error_str = 'error'
let g:ale_echo_msg_warning_str = 'warn'
let g:ale_echo_msg_format = '[%linter%] %severity%: %s'
let g:ale_sign_warning = '😳'
let g:ale_sign_error = '💩'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" for airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" for typescript
let g:tsuquyomi_completion_detail = 1

" Enable Italics
let &t_ZH = "\e[3m"
let &t_ZR = "\e[23m"
" 
hi Comment cterm=italic gui=italic
hi Keyword cterm=italic gui=italic
hi Type cterm=italic gui=italic

"""""""""""
" key map "
"""""""""""
let mapleader = " "
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

" goto
map <leader>gtt :YcmCompleter GoTo<CR>
map <leader>gtd :YcmCompleter GoToDefinition<CR>
map <leader>gtr :YcmCompleter GoToReferences<CR>



