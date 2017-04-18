#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -l'
alias la='ls -a'
alias ll='ls -al'
alias cl='cd "$@" && ls'
alias ..='cd ..'

alias e='emacsclient'
alias v='vim'

alias   g='git'
alias  ga='git add'
alias  gc='git commit -m'
alias gca='git commit --amend'
alias  gd='git diff'
alias  gl='git log'
alias  gr='git reset HEAD'
alias  gs='git status'

alias c='clear'
alias x='exit'

alias info='clear; neofetch --color_blocks off --ascii_distro arch_small'
alias pkgcount='(dpkg --list || pacman -Q) 2> /dev/null | wc -l'
alias ytdl='youtube-dl'

export EDITOR='vim'
export VISUAL='vim'

export PS1="┌─[ \[\e[33m\]\w\[\e[m\] ] \n└─╼ "
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
