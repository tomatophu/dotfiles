# ~/.bashrc


eval "$(starship init bash)"
eval "$(fzf --bash)"

alias 'ls'='ls --color=auto'
alias 'dir'='dir --color=auto'
alias 'vdir'='vdir --color=auto'

alias 'rg'='rg --color=auto'
alias 'grep'='grep --color=auto'
alias 'fgrep'='fgrep --color=auto'
alias 'egrep'='egrep --color=auto'

alias 'll'='ls -l'
alias 'la'='ls -a'
alias 'l'='ls -CF'

alias 'cat'='bat'

export EDITOR='nvim'

