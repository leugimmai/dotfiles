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

let NERDTreeShowHidden=1

map <C-n> :NERDTreeToggle<cr>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

colorscheme gruvbox
