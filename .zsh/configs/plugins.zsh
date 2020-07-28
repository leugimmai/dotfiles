plugins=(
        git
        docker
        zsh-autosuggestions
        osx
        zsh-syntax-highlighting
		vscode
        asdf
)

# FZF and RipGrep Setup: https://dev.to/iggredible/how-to-search-faster-in-vim-with-fzf-vim-36ko

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
