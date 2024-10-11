#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Settings dirs
CODE_DIR=$(eval "echo $HOME/Library/Application\ Support/Code/User")
SETTINGS_FILE="${CODE_DIR}/settings.json"
DOTFILES_SETTINGS_FILE="vscode/settings.json"
OLD_SETTINGS="vscode/old_global_settings.json"

printf "Moving current $SETTINGS_FILE to \n  ${OLD_SETTINGS} IF exists..\n"
mv "$SETTINGS_FILE" ${OLD_SETTINGS} || true

printf "Will copy settings.json into global VSCode settings file...\n"
printf 'cp vscode/settings.json `printf $SETTINGS_FILE`'
cp vscode/settings.json ${SETTINGS_FILE}

echo "..Done.\n"