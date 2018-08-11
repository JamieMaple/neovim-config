" genera config

set number
set relativenumber

" set background None

" indent config
set noautoindent
set smartindent

" tabs
set tabstop=4
set softtabstop=4
set expandtab

filetype on
syntax on

set encoding=UTF-8

" plugins

call plug#begin('~/.config/nvim/plugged')

" make sure you are using single quotes
" format
" Plug 'junegunn/vim-easy-align'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
" color themes
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
" Plug 'mhartington/oceanic-next'

call plug#end()

if (has("termguicolors"))
    set termguicolors
endif

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

" for workspace
let g:workspace_powerline_separators = 1
let g:workspace_tab_icon = "\uf00a"
let g:workspace_left_trunc_icon = "\uf0a8"
let g:workspace_right_trunc_icon = "\uf0a9"


" key map

map <C-n> :NERDTreeToggle<CR>

" noremap <Tab> :WSNext<CR>
" noremap <S-Tab> :WSPrev<CR>
" noremap <Leader><Tab> :WSClose<CR>
" noremap <Leader><S-Tab> :WSClose!<CR>
" noremap <C-t> :WSTabNew<CR>

" cabbrev bonly WSBufOnly



" disable arrows
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" clear search
nnoremap <silent> <C-l>  :<C-u>noh<CR><C-l>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyALign)



