" plugins

call plug#begin('~/.config/nvim/plugged')

" make sure you are using single quotes
" format
" Plug 'junegunn/vim-easy-align'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'

Plug 'mhartington/oceanic-next'

call plug#end()

if (has("termguicolors"))
    set termguicolors
endif
" Theme
syntax enable
colorscheme OceanicNext
" for nerd tree
let g:airline_theme='oceanicnext'

