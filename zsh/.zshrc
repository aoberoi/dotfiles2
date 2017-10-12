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

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/emoji
    zgen oh-my-zsh plugins/encode64

    # zgen load lukechilds/zsh-nvm
    zgen load zsh-users/zsh-completions

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/clean

    # save all to init script
    zgen save
fi

# load nvm
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

# load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# added by travis gem
[ -f /Users/ankur/.travis/travis.sh ] && source /Users/ankur/.travis/travis.sh

# swiftenv
export PATH="/Users/ankur/.swiftenv/shims:${PATH}"
source '/usr/local/Cellar/swiftenv/1.3.0/bin/../libexec/../completions/swiftenv.zsh'
