#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

echo "Installing brew packages..."

echo "  1 - Installing brew CLI packages..."
brew bundle --file brewfiles/Brewfile_CLI

echo "  2 - Installing brew Casks..."
brew bundle --file brewfiles/Brewfile_Casks

###
# Cleanup
###

# Remove outdated versions from the cellar.
brew cleanup

echo "..Done"
