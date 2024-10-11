#!/bin/sh

###
# Install configs like aliases (shell-agnostic), but also ZSH config files etc
###

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

###
# Aliases and common envvars
###

# Load shell-agnostic profiles
ln -sf $DIR/.aliases $HOME
ln -sf $DIR/.vars $HOME

# Load zsh configs and theme
ln -sf $DIR/zsh/.zshrc $HOME
ln -sf $DIR/zsh/.zshenv $HOME
ln -sf $DIR/zsh/.zprofile $HOME
ln -sf $DIR/zsh/icaro.zsh-theme $HOME/.oh-my-zsh/themes