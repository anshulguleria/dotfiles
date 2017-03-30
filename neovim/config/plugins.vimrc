" color schemes
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'

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
" Git plugin for vim to help in some git commands.
" Mainly using this to help lightline with git
Plug 'tpope/vim-fugitive'

" Babel plugin and as plugin suggests
" we are installing webapi also
Plug 'jbgutierrez/vim-babel'
Plug 'mattn/webapi-vim'

" Plugin for dev icons for vim
Plug 'ryanoasis/vim-devicons'