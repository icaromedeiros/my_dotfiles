#!/usr/bin/env bash

echo "Installing brew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Updating brew..."
brew update

echo "Done."
