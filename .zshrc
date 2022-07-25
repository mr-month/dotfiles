# should high up top, anything requiring user input must be above this
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ -f "$HOME/.zsh/powerlevel10k/powerlevel10k.zsh-theme" ]] \
  && source "$HOME/.zsh/powerlevel10k/powerlevel10k.zsh-theme"

# modifications to PATH
PATH="${HOME}/.local/bin:${PATH}"
export PATH


if [[ "$OSTYPE" == "linux-gnu" ]]; then
  [[ -r "/usr/share/zsh/share/antigen.zsh" ]] && source "/usr/share/zsh/share/antigen.zsh"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  source "$(brew --prefix)/share/antigen/antigen.zsh"
fi


antigen use oh-my-zsh


antigen bundle git-prompt
# antigen bundle helm
# antigen bundle kubectl
antigen bundle z

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

# TODO: antigen bundle mr-month/dotfiles custom/custom-aws

antigen apply


#export ZSH="$HOME/.oh-my-zsh"
#export ZSH_CUSTOM="$HOME/dotfiles/.oh-my-zsh/custom"

#DISABLE_UPDATE_PROMPT="false"

# set default (text) editor, see https://unix.stackexchange.com/a/4861
export VISUAL="vim"
#export VISUAL="$(command -v nvim)"
export EDITOR="$VISUAL"

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# do not share history, thank you!
unsetopt share_history

# use user-specific ranger config only, don't load it twice
export RANGER_LOAD_DEFAULT_RC="FALSE"

# `help` command like in BASH (by default `run-help` is aliased to `man`)
autoload -Uz run-help
autoload -Uz run-help-git
autoload -Uz run-help-ip
autoload -Uz run-help-openssl
autoload -Uz run-help-p4
autoload -Uz run-help-sudo
autoload -Uz run-help-svk
autoload -Uz run-help-svn

(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help

# kubectl ... use all config files found in '.kube/configs'
KUBECONFIG=""
[[ -d ~/.kube/configs ]] && KUBECONFIG=`find ~/.kube/configs -type f | tr "\n" ":"`
[[ -f ~/.kube/config ]] && KUBECONFIG="~/.kube/config:$KUBECONFIG"
[[ -z "$KUBECONFIG" ]] && unset KUBECONFIG || export KUBECONFIG
