export PATH=/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/Applications/Mkvtoolnix.app/Contents/MacOS:/Users/jesr/Dropbox/Shellscripts:/usr/local/pear/bin:/usr/lib/php/pear/bin:/usr/local/pear/bin:/usr/lib/php/pear/bin:/Users/jesr/bin:/opt/chef/bin:/Users/jesr/dotfiles/shellscripts
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

alias setlive='git push && git checkout master && git merge develop && git push origin master && git checkout develop'
alias apmpoi='cd /Users/jesr/Dropbox/Sites/apmpoi.local/Packages/Application/ArnsboMedia.ApmPoi'
alias apm='cd /Users/jesr/Dropbox/Sites/datasucker.voicearchive.local/'
alias tweaker='cd /Users/jesr/Dropbox/Sites/apmpoi.local/Packages/Application/ArnsboMedia.VideoSystem.Tweaker/Resources/Public/Frontend/'

alias fetch-rebase='git fetch origin master && git rebase origin/master'

alias latestexception='less `ls | tail -n 1`'

alias gpush='git pull && git push'
alias gtst='git status'
alias gd='git diff'

alias here='open -a Finder .'


export EDITOR="vim"
export SVN_EDITOR="vim"
export MAGICK_HOME="/Applications/ImageMagick-6.7.5"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export FLOW3_CONTEXT="Development"
export TERM=screen-256color-bce

vim () {
  if command -v mvim > /dev/null 2>&1
  then
    mvim -v $@
  else
    /usr/bin/vim $@
  fi
}
