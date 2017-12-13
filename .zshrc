# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux colorize copydir extract zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
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
# Además, las letras "c" y "v" están bastante cerca la una de la otra en el teclado QWERTY
alias cv="vim .vimrc"
# Search for packages in Arch with pacman. "spp" stands for "Search pacman packages"
alias spp="pacman -Q | grep "
# Quick command to rm -r 
alias rr="rm -r"
# Purge a package with pacman
alias purge="sudo pacman -Rnscu"
# Clear the screen of the terminal, but faster.
alias c="clear"
# Remove old packages in pacman cache and optimize pacman with the script pacman-optimize 
alias clean="sudo pacman -Sc && pacaur -Sc && sudo pacman-optimize"
# Just a more savage clean :)
alias suclean="sudo pacman -Scc && pacaur -Scc && sudo pacman-optimize"
# Use Reflector to improve the speed of Arch mirrors. First do a backup of /etc/pacman.d/mirrorlist.
alias mirror="sudo cp -vf /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup && sudo reflector --verbose -l 10 --sort score -p http -p https --sort rate --save /etc/pacman.d/mirrorlist"
# Using vim as pager, like less
alias less="/usr/share/vim/vim80/macros/less.sh"
# Find the 10 most heavy files in a folder
alias hefi="du -hsx * | sort -rh | head -10"
# Edit i3 conf with vim and much faster
alias vi3="vim ~/.config/i3/config"
# Vim being cat
alias cat="vimcat"

export EDITOR="vim"
export PAGER="vimpager"
