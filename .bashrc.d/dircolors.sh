if command -v dircolors > /dev/null 2>&1; then
  eval $(dircolors -b)
  alias ls='ls --color=auto'
fi
