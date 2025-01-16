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
  git zsh-autosuggestions python brew
)

source $ZSH/oh-my-zsh.sh

# Load shell-agnostic aliases and vars
#  Does not work running from ~/?/dotfiles when installing
source $HOME/.aliases
source $HOME/.vars

###
# MacOS (brew) specific and PATH
###

# GNU utils take precedence for compatibility (scripting)

# TODO review if needed

# UTILS_PATH="/usr/local/opt/coreutils/libexec/gnubin"
# FIND_PATH="/usr/local/opt/findutils/libexec/gnubin"
# LIBTOOL_PATH="/usr/local/opt/libtool/bin/"
# GNU_PATHS="${UTILS_PATH}:${FIND_PATH}:${LIBTOOL_PATH}"

# export PATH="${GNU_PATHS}:$PATH"

###
# Rust CLI configs
###

# ctrl-r binding
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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

# Zlib envvars (useful to compile Python)
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

###
# Rust
###

# Best Rihanna-like prompt in Rust
eval "$(starship init zsh)"