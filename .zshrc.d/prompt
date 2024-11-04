if [[ "$(uname)" == 'Darwin' ]]; then
  PS1='%n:%~$ '
fi

if command -v vcprompt > /dev/null 2>&1; then
  setopt PROMPT_SUBST
  PS1='%n:%~$(vcprompt -f "[%b]")$ '
fi
