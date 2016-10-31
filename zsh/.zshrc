# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/ankur/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source $HOME/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle emoji
antigen bundle encode64
antigen bundle z

antigen bundle zsh-users/zsh-completions
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle lukechilds/zsh-nvm
antigen bundle tomsquest/nvm-auto-use.zsh

antigen theme clean

antigen apply
