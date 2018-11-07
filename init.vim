" genera config

set ignorecase
set number
set relativenumber
set cursorline
set ruler
set shell=sh
set foldmethod=indent
set foldlevelstart=99

" tabs
filetype plugin indent on
" global tabs
set ts=4 sts=4 sw=4 et

autocmd filetype html setlocal ts=2 sw=2
autocmd filetype css setlocal ts=2 sw=2
autocmd filetype less setlocal ts=2 sw=2
autocmd filetype javascript setlocal ts=2 sw=2
autocmd filetype typescript setlocal ts=2 sw=2
autocmd filetype wxss setlocal ts=2 sw=2
autocmd filetype json setlocal ts=2 sw=2
autocmd filetype yaml setlocal ts=2 sw=2
autocmd filetype wxml setlocal ts=2 sw=2
autocmd filetype vue setlocal ts=2 sw=2
autocmd FileType vue syntax sync fromstart
autocmd BufNewFile,BufRead fish_funced set ft=fish

filetype on
syntax on


set encoding=utf-8
set fileencoding=utf-8

" plugins

call plug#begin('~/.config/nvim/plugged')

" make sure you are using single quotes
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" tree relational
Plug 'https://github.com/Shougo/neomru.vim'
Plug 'https://github.com/Shougo/unite.vim'
Plug 'https://github.com/Shougo/vimfiler.vim'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mileszs/ack.vim' " [doc](https://github.com/mileszs/ack.vim)
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'
" deoplete
Plug 'davidhalter/jedi-vim'

" vim
Plug 'https://github.com/Shougo/neco-vim'

" python
"Plug 'zchee/deoplete-jedi'

" github
" Plug 'SevereOverfl0w/deoplete-github'

" language server
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
    \ }

" haksell
Plug 'https://github.com/eagletmt/neco-ghc'

"" c family
"Plug 'zchee/deoplete-clang'

"" c#
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'OmniSharp/omnisharp-vim' " need to have some config files
"Plug 'cyansprite/deoplete-omnisharp' , {'do': './install.sh'}

" docker
Plug 'https://github.com/ekalinin/Dockerfile.vim.git'

" fish
Plug 'https://github.com/dag/vim-fish'

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'zchee/deoplete-go', { 'do': 'make'} " add gocode
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" js & ts
"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'for': ['typescript', 'tsx'], 'do': './install.sh' }

"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif

Plug 'Valloric/YouCompleteMe' " with typescript and node install
Plug 'scrooloose/nerdcommenter'
Plug 'https://github.com/skywind3000/asyncrun.vim.git'
Plug 'nathanaelkane/vim-indent-guides'

" color themes
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/iceisspetrel/Monrovia'
Plug 'ashfinal/vim-colors-violet'
Plug 'https://github.com/Erichain/vim-monokai-pro.git'
Plug 'https://github.com/lifepillar/vim-solarized8.git'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/chriskempson/vim-tomorrow-theme'

Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" xml
Plug 'https://github.com/othree/xml.vim.git'

" async cmd execution
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" javascript & typescript
Plug 'pangloss/vim-javascript'
Plug 'neoclide/vim-jsx-improve'
Plug 'https://github.com/Quramy/tsuquyomi.git'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'moll/vim-node'
Plug 'posva/vim-vue'

" wxapp
Plug 'chemzqm/wxapp.vim'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

call plug#end()

" indent enable
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
"let g:indent_guides_guide_size=2
" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#888'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 7 " (default: 2)

" markdown
let g:vim_markdown_conceal = 0

" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" ycm
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-space>'
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-n>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" haskell hie
let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper'] }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>


"let g:UltiSnipsExpandTrigger="<tab>"
" deoplete
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option({
" \ 'auto_complete_delay': 16,
" \ 'smart_case': v:true,
"\ })

" jedi
" let g:jedi#completions_enabled = 0
" let g:jedi#goto_definitions_command = '<leader>t'

" deoplete c
" for macos
" let g:deoplete#sources#clang#libclang_path='/usr/local/Cellar/llvm/6.0.1/lib/libclang.dylib'
" let g:deoplete#sources#clang#clang_header='/usr/local/Cellar/llvm/6.0.1/include/clang'
" let g:deoplete#sources#clang#std={'c': 'c11', 'cpp': 'c++1z', 'objc': 'c11', 'objcpp': 'c++1z'}

" github
" let g:deoplete#sources = get(g:,'deoplete#sources',{})
" let g:deoplete#sources.gitcommit=['github']
" let g:deoplete#keyword_patterns = {}
" let g:deoplete#keyword_patterns.gitcommit = '.+'


" vue
let g:vue_disable_pre_processors=1

" cs
let g:OmniSharp_server_use_mono = 1

" auto save
" let g:ale_fix_on_save = 1
" emmet
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_mode='a'
let g:user_emmet_settings = {
\ 'wxss': {
\   'extends': 'css',
\ },
\ 'wxml': {
\   'extends': 'html',
\   'aliases': {
\     'div': 'view',
\     'span': 'text',
\   },
\  'default_attributes': {
\     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
\     'navigator': [{'url': '', 'redirect': 'false'}],
\     'scroll-view': [{'bindscroll': ''}],
\     'swiper': [{'autoplay': 'false', 'current': '0'}],
\     'icon': [{'type': 'success', 'size': '23'}],
\     'progress': [{'precent': '0'}],
\     'button': [{'size': 'default'}],
\     'checkbox-group': [{'bindchange': ''}],
\     'checkbox': [{'value': '', 'checked': ''}],
\     'form': [{'bindsubmit': ''}],
\     'input': [{'type': 'text'}],
\     'label': [{'for': ''}],
\     'picker': [{'bindchange': ''}],
\     'radio-group': [{'bindchange': ''}],
\     'radio': [{'checked': ''}],
\     'switch': [{'checked': ''}],
\     'slider': [{'value': ''}],
\     'action-sheet': [{'bindchange': ''}],
\     'modal': [{'title': ''}],
\     'loading': [{'bindchange': ''}],
\     'toast': [{'duration': '1500'}],
\     'audio': [{'src': ''}],
\     'video': [{'src': ''}],
\     'image': [{'src': '', 'mode': 'scaleToFill'}],
\   }
\ },
\}

" Theme
" recommend fonts: losevka Extralight Italic Nerd Font
if (has("termguicolors"))
    set termguicolors
endif

syntax enable
" colorscheme Tomorrow-Night
" colorscheme molokai
" colorscheme gruvbox
" colorscheme monrovia
" colorscheme monokai_pro
colorscheme solarized8
" set background=dark

call fugitive#head()

" nerd git
let g:NERDTreeIndicatorMapCustom = {
\ "Modified"  : "✹",
\ "Staged"    : "✚",
\ "Untracked" : "✭",
\ "Renamed"   : "➜",
\ "Unmerged"  : "═",
\ "Deleted"   : "✖",
\ "Dirty"     : "✗",
\ "Clean"     : "✔︎",
\ 'Ignored'   : '☒',
\ "Unknown"   : "?"
\ }

let g:airline_theme='tomorrow'
" let g:airline_theme='molokai'
" let g:airline_theme='gruvbox'

" vim filer
"   Settings | VimFiler
"   ~use as default file explorer
let g:vimfiler_as_default_explorer = 1
"   ~add devicons to vimfilers
let g:webdevicons_enable_vimfiler = 1
"   ~modify indentation
let g:vimfiler_tree_indentation = 2
"   ~default tree leaf icon
let g:vimfiler_tree_leaf_icon = ""
"   ~default tree opened icon
let g:vimfiler_tree_opened_icon = ""
"   ~default tree closed icon
let g:vimfiler_tree_closed_icon = ""
"   ~change default directory
let g:vimfiler_enable_auto_cd = 1
"   ~don't use safe mode by default
let g:vimfiler_safe_mode_by_default = 0
"   ~default profile
call vimfiler#custom#profile('default', 'context', {
      \ 'safe' : 1,
      \ 'auto-cd' : 1,
      \ })
"   ~don't hide dotfiles
let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$']

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let NERDTreeShowHidden = 1 " toggle show hidden files, `shift - i`
" ale
let b:ale_linters = {
\   'c': ['clang'],
\   'c++': ['clang'],
\   'go': ['golint', 'go vet', 'go build'],
\   'haskell': ['stack-ghc'],
\   'c#': ['OmniSharp'],
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'python': ['flake8']
\ }

let g:ale_fixers = {
\ 'javascript': [
\	'prettier'
\ ],
\ 'typescript': ['tslint', 'prettier'],
\   'json': ['prettier'],
\ 'json5': ['prettier'],
\ 'css': ['stylelint', 'prettier'],
\ 'less': ['stylelint', 'prettier'],
\ 'vue': ['prettier'],
\}
"let g:ale_linters_explicit = 1 " 有坑。。。开启打开文件夹不能用了。。
let g:ale_lint_delay = 1000
let g:ale_sign_column_always = 1 " 左侧始终打开
let g:ale_set_loclist = 1
let g:ale_echo_msg_error_str = 'error'
let g:ale_echo_msg_warning_str = 'warn'
let g:ale_echo_msg_format = '[%linter%] %severity%: %s'
let g:ale_sign_warning = '⚡️'
let g:ale_sign_error = '✗'
"let g:ale_set_quickfix = 1

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
hi htmlArg cterm=italic gui=italic

" tree
let g:unite_source_menu_menus = get(g:,'unite_source_menu_menus',{})
let g:unite_source_menu_menus.git = {
    \ 'description' : '            gestionar repositorios git
        \                            ⌘ [espacio]g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \['▷ tig                                                        ⌘ ,gt',
        \'normal ,gt'],
    \['▷ git status       (Fugitive)                                ⌘ ,gs',
        \'Gstatus'],
    \['▷ git diff         (Fugitive)                                ⌘ ,gd',
        \'Gdiff'],
    \['▷ git commit       (Fugitive)                                ⌘ ,gc',
        \'Gcommit'],
    \['▷ git log          (Fugitive)                                ⌘ ,gl',
        \'exe "silent Glog | Unite quickfix"'],
    \['▷ git blame        (Fugitive)                                ⌘ ,gb',
        \'Gblame'],
    \['▷ git stage        (Fugitive)                                ⌘ ,gw',
        \'Gwrite'],
    \['▷ git checkout     (Fugitive)                                ⌘ ,go',
        \'Gread'],
    \['▷ git rm           (Fugitive)                                ⌘ ,gr',
        \'Gremove'],
    \['▷ git mv           (Fugitive)                                ⌘ ,gm',
        \'exe "Gmove " input("destino: ")'],
    \['▷ git push         (Fugitive, salida por buffer)             ⌘ ,gp',
        \'Git! push'],
    \['▷ git pull         (Fugitive, salida por buffer)             ⌘ ,gP',
        \'Git! pull'],
    \['▷ git prompt       (Fugitive, salida por buffer)             ⌘ ,gi',
        \'exe "Git! " input("comando git: ")'],
    \['▷ git cd           (Fugitive)',
        \'Gcd'],
    \]

"""""""""""
" key map "
"""""""""""
let mapleader = " "
" map <C-n> :NERDTreeToggle<CR>
map <C-n> :VimFilerExplorer -parent<CR>
nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>

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

" split switch
map <leader>hh <C-w>h
map <leader>ll <C-w>l
map <leader>jj <C-w>j
map <leader>kk <C-w>k

map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

" background
nnoremap <silent> <Leader>b :call ToggleBackground()<CR>
function! ToggleBackground()
    if &background == "light"
        set background=dark
    else
        set background=light
    endif
endfunction



