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
