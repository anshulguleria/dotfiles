call plug#begin('~/.config/nvim/plugged')

" Included plugins
source $HOME/.config/nvim/config/plugins.vimrc

call plug#end()

" fzf mapping to Ctrl-p like
" Ctrl-p plugin
noremap <C-p> :FZF<CR>

" NERDTree settings
let g:NERDTreeWinPos = "right"

" jsx settings
" Set highlighting for js files too
let g:jsx_ext_required = 0

" jsdoc settings
"let g:jsdoc_access_descriptions = 2
"let g:jsdoc_underscore_private = 1
"let g:jsdoc_enable_es6 = 1
let g:jsdoc_formatter = 'tsdoc'

" neomake settings
"autocmd! BufWritePost * Neomake
" Set linter to eslint
"let g:neomake_javascript_enabled_makers = ['eslint']
"let g:neomake_python_enabled_makers = ['pylint']
"let g:neomake_open_list = 2
" Any extra args required to be passed to command
"let g:neomake_javascript_eslint_marker

" ALE linter settings
"let g:ale_open_list = 1
"let g:ale_linters = {
"\   'javascript': ['eslint'],
"\}

" Settings for dev-icons
set encoding=utf8

" lightline settings
source $HOME/.config/nvim/config/lightline.vimrc

" Theme settings
set termguicolors
set background=dark
"colorscheme inkpot
colorscheme oceanic_material
"colorscheme gruvbox
"colorscheme brogrammer
"colorscheme material-theme
"colorscheme materialtheme
"colorscheme desertink
"colorscheme onedark
"colorscheme neodark
"colorscheme dracula
"colorscheme onehalfdark
"colorscheme darktooth
"colorscheme onedark
"colorscheme dante
"colorscheme warm-night

" Editor settings
source $HOME/.config/nvim/config/editor.vimrc
