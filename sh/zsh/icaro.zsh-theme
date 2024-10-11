function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg_bold[yellow]%}$(hostname -s) "
  fi
}

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"

PROMPT='$(ssh_connection)%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )$ '
RPROMPT='${return_status}$(git_prompt_status)%{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
