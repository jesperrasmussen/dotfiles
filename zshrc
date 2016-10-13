# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# load zgen
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source "${ZDOTDIR:-$HOME}/.zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    # prezto options
    zgen prezto editor key-bindings 'emacs'
    zgen prezto prompt theme 'agnoster'

    # prezto and modules
    zgen prezto
    zgen prezto environment
    zgen prezto history
    zgen prezto directory
    zgen prezto git
    zgen prezto command-not-found
    zgen prezto syntax-highlighting
    zgen prezto history-substring-search
    zgen prezto fasd
    zgen prezto osx
    zgen prezto homebrew
    zgen prezto tmux

    # save all to init script
    zgen save
fi

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/Qt5.5.1/5.5/clang_64/bin
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

ulimit -n 1024

alias gpush='git pull --rebase && git push'
alias gtst='git status'
alias gd='git diff'

alias here='open -a Finder .'

export NVM_DIR="/Users/jesperrasmussen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
