" color schemes
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'jdkanani/vim-material-theme'
Plug 'KeitaNakamura/neodark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}

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
"Plug 'othree/yajs.vim'
" ES next highlighting. Works together with yajs.vim. If you are removing yajs
" plugin then remove this too
"Plug 'othree/es.next.syntax.vim'
" Es6 based syntax highlighting
"Plug 'isRuslan/vim-es6'

" Plugin for markdown syntax highlighting and rules matching
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'

" Plugin for typescript syntax highlighting
"Plug 'leafgarland/typescript-vim'

" Plugin for jsx highlighting
"Plug 'mxw/vim-jsx'

" Syntax highlighting for many languages
Plug 'sheerun/vim-polyglot'

" Plugin for jsdoc auto-snippets
Plug 'heavenshell/vim-jsdoc'

" Syntax checking plugin for asynchronous functionality
"Deprecating neomake in favour of ale
"Plug 'benekastah/neomake'
" Deprecating ale in favour of coc-eslint plugin
"Plug 'w0rp/ale'

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

" Plugin to read editor config
Plug 'editorconfig/editorconfig-vim'

" Plugin to show indentation lines
Plug 'Yggdroot/indentLine'

" Plugin for remote files development
Plug 'zenbro/mirror.vim'

" Plugin for dev icons for vim
Plug 'ryanoasis/vim-devicons'

" Plugin to update ctags automatically on file save
Plug 'craigemery/vim-autotag'

" Plugin to add interactive scratch pad for your languages
" Run Codi command to enable and Codi! to disable
Plug 'metakirby5/codi.vim'

" Plugin to enable import cost. Usage :ImportCost
"Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

" Intellisence engine for nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Language servers setup for coc
" For JS and TS
Plug 'neoclide/coc-tsserver', { 'do': 'yarn install' }
" For JSON
Plug 'neoclide/coc-json', { 'do': 'yarn install' }
" For import-cost
Plug 'wix/import-cost', { 'do': 'npm install' }
" For eslint integration
Plug 'neoclide/coc-eslint', { 'do': 'yarn install' }

" For color highlight for color code
" Disabling as I am not able to make it work
"Plug 'neoclide/coc-highlight', { 'do': 'yarn install' }
" For tslint
"Plug 'neoclide/coc-tslint-plugin', { 'do': 'yarn install' }

" Plugin to enable nvim editing on browser
" Disabling as not using it in all systems
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" For markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
