call plug#begin('~/.config/nvim/plugged')

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

" Emmet coding
Plug 'mattn/emmet-vim'

" Show git diff integrationa and add/remove highlight
Plug 'airblade/vim-gitgutter'

" Babel plugin and as plugin suggests
" we are installing webapi also
Plug 'jbgutierrez/vim-babel'
Plug 'mattn/webapi-vim'

call plug#end()

" NERDTree settings
let g:NERDTreeWinPos = "right"

" jsdoc settings
let g:jsdoc_access_descriptions = 2
let g:jsdoc_underscore_private = 1
let g:jsdoc_enable_es6 = 1

" Set case insensitive search for autosuggest
" and other commands
set ignorecase
" Set smartcase on which check for capital letters for
" direct match rather than case insensitive
set smartcase

" Set line numbers to be visible
set number

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
