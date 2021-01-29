set -x EDITOR vim
set -x BAT_THEME gruvbox

set fish_greeting

set fish_color_autosuggestion white --dim
set fish_color_cancel -r
set fish_color_command green
set fish_color_comment white --dim
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_end yellow
set fish_color_error red
set fish_color_escape magenta
set fish_color_host normal
set fish_color_match yellow
set fish_color_normal normal
set fish_color_operator yellow
set fish_color_param white
set fish_color_quote yellow
set fish_color_redirection magenta
set fish_color_search_match --background=504945
set fish_color_selection white --bold --background=504945
set fish_color_user brgreen
set fish_pager_color_completion normal
set fish_pager_color_description yellow --dim
set fish_pager_color_prefix white --bold --underline
set fish_pager_color_progress bryellow

alias vim='nvim'
alias v='nvim'
alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias s='systemctl'
alias cat='bat'

alias ls='ls --group-directories-first --color=auto'
alias la='ls --group-directories-first -a'
alias ll='ls --group-directories-first -hl'
alias lla='ls --group-directories-first -ahl'

alias cp='cp -i'
alias mv='mv -i'
alias rv='rv -i'

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gst='git status'
alias gl='git log'
alias gd='git diff'
alias gc='git commit -m'

contains ~/.cargo/bin $PATH
or set PATH ~/.cargo/bin $PATH

setxkbmap -option caps:escape
fzf_key_bindings
