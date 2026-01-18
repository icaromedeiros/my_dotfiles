# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="icaro"

DISABLE_AUTO_UPDATE="false"
export UPDATE_ZSH_DAYS=30
COMPLETION_WAITING_DOTS="true"

# History
HIST_STAMPS="yyyy-mm-dd"

# cp: copy with progress bar
plugins=(
  zsh-autosuggestions git brew docker fzf ssh
)

source $ZSH/oh-my-zsh.sh

# Load shell-agnostic aliases and vars
#  Does not work running from ~/?/dotfiles when installing
source $HOME/.aliases
source $HOME/.vars

###
# Rust CLI configs
###

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Use bat in man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

###
# Rust
###
export CARGO_PATH="$HOME/.cargo/bin"
PATH="${CARGO_PATH}:$PATH"

###
# Python
###

# Zlib envvars (useful to compile Python in pyenv)
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

###
# Rust
###

# Best Rihanna-like prompt in Rust
eval "$(starship init zsh)"