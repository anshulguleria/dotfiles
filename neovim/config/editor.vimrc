" Contains settings related to editor configuration
" like tab length, etc.

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
hi CursorLine term=bold cterm=bold gui=bold
" END

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
set nofoldenable        " don't fold by default
set foldlevel=1

" Marker line on text length limit
set textwidth=80
set colorcolumn=+1

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

" Settings for indentLine
let g:indentLine_enabled = 0
