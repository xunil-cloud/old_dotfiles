export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy-kingdom"


plugins=(
	git
	git-extras
    docker
	sudo
	)
	
source $ZSH/oh-my-zsh.sh
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

export EDITOR='vim'
export PATH="$HOME/.cargo/bin:$PATH"

alias la="ls -al"
alias dwav="youtube-dl --audio-format wav -x"
alias dmp3="youtube-dl --audio-format mp3 -x"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
