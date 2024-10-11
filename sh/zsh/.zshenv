# https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout
# .zshenv is always sourced 
#   it often contains exported variables that should be available to other programs.
# For example, $PATH, $EDITOR, and $PAGER are often set in .zshenv.

eval "$(/opt/homebrew/bin/brew shellenv)"
# export PYENV_ROOT="$HOME"/.pyenv
# export PATH="${PYENV_ROOT}/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"