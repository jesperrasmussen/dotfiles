#!/usr/bin/env bash
# Largely stolen from Mathias Bynens
# https://github.com/mathiasbynens/dotfiles

# Make sure we’re using the latest Homebrew
#update

# Upgrade any already-installed formulae
#upgrade

# Setup basic packages I always need

# Install more recent versions of some OS X tools
tap 'homebrew/dupes'
brew 'homebrew/dupes/grep'

# Setup nodejs
brew 'node'

# Setup nginx
#brew 'nginx'

# Setup vim using MacVim
#brew 'macvim', args--override-system-vim

# Install git trix
brew 'tig'

# Install tmux
brew 'tmux'

# Install sshfs for development
cask 'osxfuse'
brew 'sshfs'
brew 'htop'

# Run additional commands for sshfs
#sudo kextunload -b com.github.osxfuse.filesystems.osxfusefs
#sudo /bin/cp -RfX /usr/local/Cellar/osxfuse/2.6.2/Library/Filesystems/osxfusefs.fs /Library/Filesystems
#	sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs

# Install brew cask for apps
tap 'caskroom/cask'

# Install apps using brew-cask
cask 'charles'
cask 'iterm2'
cask 'hazel'
cask 'dropbox'
cask 'crashplan'
cask 'skype'
cask 'vlc'
cask 'omnifocus'
cask 'sequel-pro'
cask 'alfred'
cask 'slack'
cask 'cyberduck'
cask 'intellij-idea'
cask 'datagrip'
cask 'visual-studio-code'

#Lets remap Caps Lock, shall we?
cask 'karabiner-elements'
cask 'hammerspoon'

#What are we? BROWSERS!
cask 'google-chrome'
cask 'firefox'

cask 'spotify'
cask 'evernote'
cask '1password'

#Work
tap 'tap homebrew/versions'
brew 'npm'

#K8s
brew 'kubernetes-cli'
brew 'kubectx'

#Maid related
brew 'tag'

brew 'ansible'

#App Store apps
#appstore 'Twitter'
#appstore 'Reditr'

# Link applications correctly
#linkapps
