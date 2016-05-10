call plug#begin('~/.config/nvim/plugged')

" color schemes
Plug 'mhartington/oceanic-next'

" Status line plugin
Plug 'itchyny/lightline.vim'

" Vim plugin for easy alignment. Visit github site for more info.
Plug 'junegunn/vim-easy-align'

" On-demand loading on some event.
" Vim plugin to show directory structure.
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Plugin outside ~/.config/nvim/plugged with post-update hook
" Fuzzy search plugin fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Syntax highlighting for javascript
Plug 'othree/yajs.vim'

" Plugin for jsdoc auto-snippets
Plug 'heavenshell/vim-jsdoc'

" Syntax checking plugin for asynchronous functionality
Plug 'benekastah/neomake'

" Emmet coding
Plug 'mattn/emmet-vim'

" Show git diff integrationa and add/remove highlight
Plug 'airblade/vim-gitgutter'

" Babel plugin and as plugin suggests
" we are installing webapi also
Plug 'jbgutierrez/vim-babel'
Plug 'mattn/webapi-vim'

" Plugin for dev icons for vim
Plug 'ryanoasis/vim-devicons'

call plug#end()

" fzf mapping to Ctrl-p like
" Ctrl-p plugin
noremap <C-p> :FZF<CR>

" NERDTree settings
let g:NERDTreeWinPos = "right"

" jsdoc settings
let g:jsdoc_access_descriptions = 2
let g:jsdoc_underscore_private = 1
let g:jsdoc_enable_es6 = 1

" neomake settings
autocmd! BufWritePost * Neomake
" Set linter to eslint
let g:neomake_javascript_enabled_markers = ['eslint']
let g:neomake_open_list = 2
" Any extra args required to be passed to command
"let g:neomake_javascript_eslint_marker

" Settings for dev-icons
set encoding=utf8
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ Nerd\ Font\ Complete\ Mono\ 11

" lightline settings
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'component': {
    \   'readonly': '%{&readonly?"":""}',
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \}

" Theme settings
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme OceanicNext
set background=dark

" Set case insensitive search for autosuggest
" and other commands
set ignorecase
" Set smartcase on which check for capital letters for
" direct match rather than case insensitive
set smartcase

" Set line numbers to be visible
set number

" Set cursor line highlight
set cursorline

" Indentation settings
" size of hard tabstop
set tabstop=4

" size of indent
set shiftwidth=4

" A combination of spaces and tabs are used to simulate
" tab stops at a width other than (hard) tabstop
set softtabstop=4

" Always uses spaces instead of tab character
set expandtab

" Folding settings
set foldmethod=indent   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " don't fold by default
set foldlevel=1

" WHITESPACE CONFIGURATION
" ----------------------------------
" highlight extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" auto-strip white spaces on save
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()
" ENDS
