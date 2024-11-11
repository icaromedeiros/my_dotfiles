#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing NeoBundle.."
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

echo "Symlinking .vimrc"
ln -sf $DIR/.vimrc ~/.vimrc

echo "Done."
