export CLICOLOR=1
export LESS='-R'
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

if [ "$(uname)" == 'Darwin' ]; then
    PS1='\u:\w\$ '
fi

[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

