call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
	Plug 'itchyny/lightline.vim'
	Plug 'morhetz/gruvbox'
	Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
