##########################################
#
#	██████╗  █████╗ ███████╗██╗  ██╗
#	██╔══██╗██╔══██╗██╔════╝██║  ██║
#	██████╔╝███████║███████╗███████║
#	██╔══██╗██╔══██║╚════██║██╔══██║
#	██████╔╝██║  ██║███████║██║  ██║
#	╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
#
########################################

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

##############
## Aliases ##
###########

# shell
alias ..="cd .."
alias ...="cd ../.."
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -v"
alias touch="touch -pv"
alias mkdir="mkdir -pv"
# alias ls='exa -a --header --icons --group-directories-first'

# nala
alias install="sudo nala install"
alias remove="sudo nala autoremove"
alias upall="sudo nala update && sudo nala upgrade"

# Dotfiles & Files
alias bs="micro ~/.bashrc"
alias gcf="cd ~/.config"
alias gdl="cd ~/downloads"
alias e="micro"
alias qv="qimgv"

############
## Theme ##
#########

# shell prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# micro theme
export "MICRO_TRUECOLOR=1"

# Pfetch

export PF_INFO="ascii title os kernel uptime pkgs memory "
export PF_ASCII="Catppuccin"
export PF_COL1="8"
export PF_COL2="7"
export PF_COL3="4"
export PF_SEP=":"
pfetch
