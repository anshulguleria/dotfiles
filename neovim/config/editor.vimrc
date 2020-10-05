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

" Set autoread to automatically refresh the file if it has changed but not
" editted by vim/nvim
set autoread
" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

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

" Setting help mapping to coc plugins. Pressing K will trigger documentation
" Referrence: https://www.reddit.com/r/vim/comments/a4bn0w/how_do_i_show_documentation_with_coc_with/
nnoremap <silent> K :call <SID>show_documentation()<CR>
" This is better than remapping K but it is not working
"set keywordprg=:call\ <SID>show_documentation()

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

com! FormatJSON %!python -m json.tool

" Settings for using external editorconfig plugin. This is done because in mac
" neovim is not build through python engine
" I think this issue is fixed now so commenting it now.
"let g:EditorConfig_core_mode = 'external_command'

" Enable ale virtual text which can show error messages beside the line causing
" the error.
" commenting it now as we are use coc extensions for linting
"let g:ale_virtualtext_cursor = 1

" Setting to remap go to definitions and implementation using language servers
" with the help of coc language servers
" Remap keys for gotos:
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
