# .zprofile sourced before .zshrc while .zlogin is sourced after .zshrc.
# You cannot include here bins altered by PATH in .zshenv

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/pyenv init --path)"