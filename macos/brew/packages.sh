#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

echo "Installing brew packages..."

###
# Install GNU packages and other CLI utilities
# Inspired in https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh
###

# Core utilities (those that come with MacOS have a different API).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# Check `zsh/.zshrc`
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils libtool

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install GNU grep
brew install grep

# Rust-rewritten CLI
brew install bat fd procs dust ripgrep tealdeer fzf lsd

# Assuming cargo is in $PATH
cargo install exa

###
# Other system packages to override
#  (prevents outdated CLI or Apple tools)
###

# Brewed samba (cervejinha)
brew install samba
# To avoid conflicting with macOS system binaries, some files were installed with non-standard name:
# - smbd:     /opt/homebrew/sbin/samba-dot-org-smbd
# - profiles: /opt/homebrew/bin/samba-dot-org-profiles

brew install vim neovim

##
# Essentials
##

# Download tools
brew install wget axel

# Git
brew install git

# Python 
#  In python/python.sh & python/packages.sh

# Other
brew install howdoi

###
# Casks
###

# Peripherals
brew install logitech-options

# Fonts
brew install font-dejavu-sans-mono-for-powerline
brew install font-hack-nerd-font
brew install font-open-sans

# Dev tools
brew install visual-studio-code cursor iterm2 
brew install httpie
brew install starship

# Security tools
brew install proton-pass proton-drive protonvpn

# Browsers
brew install brave-browser google-chrome firefox 

# The Doors and code !
brew install spotify

## Personal
# Communication
brew install telegram whatsapp zoom

# Other
brew install caffeine notion spectacle clipy

###
# Cleanup
###

# Remove outdated versions from the cellar.
brew cleanup

echo "..Done"
