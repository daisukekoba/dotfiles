[ -z "$PS1" ] && return

export HISTSIZE=10000
export SAVEHIST=10000
export HISTORY_IGNORE="(cd|ls|ll|la|l)"
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

bindkey "^N" history-search-forward
bindkey "^P" history-search-backward

export CLICOLOR=1
export LESS='-R'

command -v lesspipe > /dev/null 2>&1 && eval $(lesspipe)

if [ -d "$HOME/.zshrc.d" ]; then
  for name in $(ls "$HOME/.zshrc.d/"); do
    source "$HOME/.zshrc.d/$name"
  done
fi
