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

# Install tmux
brew 'tmux'

# Install sshfs for development
brew 'sshfs'
brew 'htop'

# Run additional commands for sshfs
#sudo kextunload -b com.github.osxfuse.filesystems.osxfusefs
#sudo /bin/cp -RfX /usr/local/Cellar/osxfuse/2.6.2/Library/Filesystems/osxfusefs.fs /Library/Filesystems
#	sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs

# Install brew cask for apps
tap 'phinze/cask'
brew 'brew-cask'

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
cask 'hipchat'
cask 'mou'

#Lets remap Caps Lock, shall we?
cask 'seil'
cask 'karabiner'

#What are we? BROWSERS!
cask 'google-chrome'
cask 'firefox'

cask 'spotify'
cask 'sublime-text3'
cask 'evernote'
cask 'dash'
cask '1password'

#App Store apps
#appstore 'Twitter'
#appstore 'Reditr'

# Link applications correctly
#linkapps
