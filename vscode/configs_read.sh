#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Will copy settings.json from global VSCode settings file to current dir: ${DIR}..."

SETTINGS_FILE=$(eval "echo $HOME/Library/Application\ Support/Code/User/settings.json")
DOTFILES_SETTINGS_FILE="vscode/settings.json"
OLD_SETTINGS="vscode/old_global_settings.json"

echo "Moving current settings to ${OLD_SETTINGS}..."

mv "$DOTFILES_SETTINGS_FILE" "$OLD_SETTINGS"

echo "Copying current settings..."

cp "$SETTINGS_FILE" "$DOTFILES_SETTINGS_FILE"

echo "..Done."