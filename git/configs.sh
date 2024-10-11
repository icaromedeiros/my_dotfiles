#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Symlinking .gitconfig..."
ln -sf $DIR/.gitconfig ~/.gitconfig

echo "Done."
