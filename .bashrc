[[ $- != *i* ]] && return

HISTSIZE= HISTFILESIZE=

export PS1="\[$(tput bold)\]\[\033[38;5;231m\][\[$(tput sgr0)\]\[\033[38;5;117m\]\u\[$(tput sgr0)\]\[\033[38;5;231m\]@\[$(tput sgr0)\]\[\033[38;5;117m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;39m\]\w\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;231m\]]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;229m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n\[$(tput sgr0)\]"

set -o vi

#Global path
export PATH=$PATH:~/.local/bin/
export PATH=$PATH:~/.scripts/


#Theme & cursor
gsettings set org.gnome.desktop.interface cursor-theme "capitaine-cursors"
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-Dark"

#Aliases
alias ls="ls --color -la"
alias vim="nvim"
alias sudo="doas"
