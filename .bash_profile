[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

[ -e "$HOME/.bashrc" ] && source "$HOME/.bashrc"

