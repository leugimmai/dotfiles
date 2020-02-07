so ~/.vim/plugins.vim

syntax on
set number
set tabstop=4
set softtabstop=4
set showcmd
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set laststatus=2
nnoremap <CR> :nohlsearch<CR><CR>

let NERDTreeShowHidden=1
set ma
map <C-n> :NERDTreeToggle<cr>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

colorscheme gruvbox

"Open NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Reloads vim when there is a change in the vimrc file without having to reload
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

set autochdir
let NERDTreeChDirMode=2


autocmd FileType nerdtree let t:nerdtree_winnr = bufwinnr('%')
autocmd BufWinEnter * call PreventBuffersInNERDTree()

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

nnoremap <C-j> gt
nnoremap <C-k> gT
