call plug#begin('~/.config/nvim/plugged')

" Included plugins
source $HOME/.config/nvim/config/plugins.vimrc

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
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_open_list = 2
" Any extra args required to be passed to command
"let g:neomake_javascript_eslint_marker

" Settings for dev-icons
set encoding=utf8

" lightline settings
source $HOME/.config/nvim/config/lightline.vimrc

" Theme settings
"set termguicolors
set background=dark
colorscheme OceanicNext
"colorscheme gruvbox
"colorscheme brogrammer
"colorscheme material-theme

" Editor settings
source $HOME/.config/nvim/config/editor.vimrc
