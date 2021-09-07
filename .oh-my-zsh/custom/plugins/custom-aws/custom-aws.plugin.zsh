# copied from 'aws' plugin from ZSH, only interested in the autocompletion
if command -v aws_completer &> /dev/null; then
  autoload -Uz bashcompinit && bashcompinit
  complete -C aws_completer aws
fi
