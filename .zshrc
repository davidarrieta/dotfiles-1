
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux colorize copydir extract zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#
# Quick command to modify .zshrc
alias zshconfig="vim ~/.zshrc"
# Ping, but faster
alias p="ping -c 3 google.com"
# Just an ls more colorful
alias ls="ls --color=yes"
# To avoid typos
alias ñs="ls --color=yes"
# Mount, but faster and better with udisk2
alias m="udisksctl mount -b"
# Same, but unmount
alias um="udisksctl unmount -b"
# Common vi alias
alias vi="vim"
# How to use the "archlinux" plugin that comes with oh-my-zsh
alias paclias="less /home/claudio/.oh-my-zsh/plugins/archlinux/README.md"
# Enable aliases to be sudo’ed
alias sudo='sudo '
# Quick access to modify .vimrc 
# "cv" stands for Customize Vim
# In addition, the letters "c" and "v" are quite close to each other on the QWERTY keyboard.
alias cv="vim .vimrc"
# Search for packages in Arch with pacman. "spp" stands for "Search pacman packages"
alias spp="pacman -Q | grep "
# Quick command to rm -r 
alias rr="rm -r"

#Set vim as default editor
export EDITOR="vim"

#Set most as pager for more colorful man pages
export PAGER="most"
