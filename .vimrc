" This must be first, because it changes other options as side effect
set nocompatible

so ~/.vim/plugins.vim

syntax on


let mapleader = ","

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set ma
set mouse=a

" Quick Save
nnoremap <S-s> :w<CR>

colorscheme Tomorrow-Night

" Toggle Relative Number
nnoremap <silent> <leader>nb :set relativenumber!<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <C-n> :NERDTreeToggle<cr>
nnoremap <Leader>f :NERDTreeToggle<Enter>
"Reloads vim when there is a change in the vimrc file without having to reload
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

set autochdir
let NERDTreeChDirMode=2


function! PreventBuffersInNERDTree()
  if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree'
    \ && exists('t:nerdtree_winnr') && bufwinnr('%') == t:nerdtree_winnr
    \ && &buftype == '' && !exists('g:launching_fzf')
    let bufnum = bufnr('%')
    close
    exe 'b ' . bufnum
    call ToggleNerdTree()
  endif
endfunction


function NotNerdTreePane()
  return bufname('%') !~# 'NERD_tree_' && winnr("$") > 1 && strlen(expand('%')) > 0 && &modifiable && exists("g:NERDTree")
endfunction

function ToggleNerdTree()
  if g:NERDTree.IsOpen()
    :NERDTreeClose
  else
    :NERDTreeFind
  endif
endfunction

autocmd BufEnter *  if (NotNerdTreePane() && g:NERDTree.IsOpen()) | NERDTreeFind | wincmd p | endif
autocmd SessionLoadPost * if (NotNerdTreePane() && !g:NERDTree.IsOpen()) | NERDTreeFind | wincmd p | endif
autocmd VimLeave * NERDTreeClose
autocmd FileType nerdtree let t:nerdtree_winnr = bufwinnr('%')
autocmd BufWinEnter * call PreventBuffersInNERDTree()

"Open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]


let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'
