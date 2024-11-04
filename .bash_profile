[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if command -v volta > /dev/null 2>&1; then
  export VOLTA_HOME="$HOME/.volta"
  export PATH="$VOLTA_HOME/bin:$PATH"
fi

[ -e "$HOME/.bashrc" ] && source "$HOME/.bashrc"

