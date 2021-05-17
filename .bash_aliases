alias vbc='vim ~/.bashrc'
alias vba='vim ~/.bash_aliases'
alias vrc='vim ~/.vimrc'
alias vgc='vim ~/.gitconfig'
alias vtm='vim ~/.tmux.conf'


alias ls='ls -h --color=auto'
alias ll='ls -l'
alias lrt='ls -lrt'

cdls() { cd "$@" && ls; }
alias cd='cdls'
alias ..='cd ..'
alias dc='cd'
alias colors='for i in {1..256}; do printf "$(tput setaf $i)██$(tput sgr0)$i"; (( $i % 16 == 0)) && echo; done'
