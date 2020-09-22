""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX') 
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color 
    endif
endif

""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1

""""""""""""""""""""""""""""""
" => Ruby section
"""""""""""""""""""""""""""""""
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

" Ctrl-P while in Insert mode adds binding.pry
au FileType ruby imap <C-p> binding.pry<esc>hi

au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set softtabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set shiftwidth=2
