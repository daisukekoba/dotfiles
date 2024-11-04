if [[ "$(uname)" == 'Darwin' ]]; then
  PS1='\u:\w$ '
fi

command -v vcprompt > /dev/null 2>&1 && PS1='\u:\w$(vcprompt -f "[%b]")$ '