[ -z "$PS1" ] && return

# shell options & variables
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups
HISTIGNORE="cd:ls:ll:la:l"
shopt -s histappend

export CLICOLOR=1
export LESS='-R'

if [ -f /usr/share/bash-completion/bash_completion ]; then
  source /usr/share/bash-completion/bash_completion
fi
command -v lesspipe > /dev/null 2>&1 && eval $(lesspipe)

if [ -d "$HOME/.bashrc.d" ]; then
  for name in $(ls "$HOME/.bashrc.d/"); do
    source "$HOME/.bashrc.d/$name"
  done
fi
