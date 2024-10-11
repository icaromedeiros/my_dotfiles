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
source $HOME/.aliases
source $HOME/.vars

###
# MacOS (brew) specific and PATH
###

# GNU utils take precedence

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

# Do I really need this sheeeee-it ?
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/icaro/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/icaro/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/icaro/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/icaro/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

