PATH=$HOME/bin:$PATH

autoload -U compinit
compinit

setopt prompt_subst

PROMPT='
%B%(?.%F{green}^-^%f.%F{red}@_@%f) %F{blue}[%M:%/]%f`prompt-git-current-branch`%b
%(!.%F{red}%B%n%b%f # .%F{green}%B%n%b%f $ )'

SPROMPT="correct: %R -> %r ? "
case "${TERM}" in
kterm*|xterm)
    precmd() {
        echo -ne "\033]0;$(basename ${PWD})\007"
    }
    preexec() {
        echo -ne "\033]0;${1%%}\007"
    }
    ;;
esac 

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups share_history auto_pushd list_packed

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 

source $HOME/.zsh/*
