function glf() { git log --all --grep="$1"; }
set -o vi
alias brc='nvim ~/.bashrc'
alias bpc='nvim ~/.bash_profile'
alias bps='source ~/.bashrc'
alias mk='chmod u+x'
alias lt='ls --human-readable --size -l -S --classify'
alias glg='git log --graph --oneline --decorate --all'
source .bashrc
