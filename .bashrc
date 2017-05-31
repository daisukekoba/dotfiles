[ -z "$PS1" ] && return

# shell options & variables
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups
HISTIGNORE="cd:ls:ll:la:l"
shopt -s histappend

if [ -d "$HOME/.bashrc.d" ]; then
  for name in $(ls "$HOME/.bashrc.d"); do
    source "$HOME/.bashrc.d/$name"
  done
fi

