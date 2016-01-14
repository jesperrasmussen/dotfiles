# Source system profile.
if [[ -f '/etc/profile' ]]; then
  emulate sh -c 'source /etc/profile'
fi

#
# Global variables
#
export EDITOR='vim'

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  ~/bin
  /usr/local/{bin,sbin}
  $path
)
