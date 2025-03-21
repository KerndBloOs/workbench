# ~/.bashrc
#

###### bash-config #######
#export PS1='❯'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set editing mode
set -o vi

# history
export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

###### tools ######
# starship
eval "$(starship init bash)"

# ssh agent
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval $(ssh-agent -s)
    ssh-add
fi

# editor
export EDITOR='nvim'
export EDITOR='nvim'

###### path variables  #######
export PATH="$PATH:/opt/nvim-linux64/bin"

###### directories ######
alias gd='cd $HOME/git-repos/dotfiles; ls -la --color=auto'
alias gr='cd $HOME/git-repos/'

###### alias-commands ######
alias wvro='curl "https://wttr.in/rosenheim?1&F&q"'
alias wro='curl "https://wttr.in/rosenheim?format=1"'
alias wvri='curl "https://wttr.in/riedering?1&F&q"'
alias wri='curl "https://wttr.in/riedering?format=1"'
alias t='/usr/bin/tmux attach || /usr/bin/tmux'
alias c='clear'
alias v='nvim'
alias e='exit'
alias ..="cd .."
alias ll='ls -la --color=auto'
alias la='ls -lathr'
alias t='tmux'

# fzf - stolen von mischavandenburg
# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'cat --style=numbers --color=always --line-range :500 {}'"
# search for a file with fzf and open it in vim
alias vf='v $(fp)'
