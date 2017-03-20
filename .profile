set -o vi
if [ -n "$PS1" ]; then
  export PS1="\033[38;5;186m[\033[38;5;94m\t\033[38;5;186m] [\033[38;5;80m\w\033[38;5;186m] \033[38;5;80m\h \n\033[38;5;231m\\$\033[m "
fi

alias ls='ls -G'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
