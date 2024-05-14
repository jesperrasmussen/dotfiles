# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LS_COLORS=di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32

 #Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='bold'

#ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
##ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

ulimit -n 1024

alias gpush='git pull --rebase && git push'
alias gtst='git status'
alias gd='git diff'

alias here='open -a Finder .'

source /usr/local/bin/aws_zsh_completer.sh

source ~/dotfiles/tmuxinator/bin/tmuxinator.zsh
