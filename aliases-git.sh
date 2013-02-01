alias gs='git status'
alias gd='git diff'
alias gl='git lg'

alias ga='git add'
alias gaa='ga .'

alias gP='git push'
alias gp='git pull --rebase'
alias gpm='git pull'
alias gpP='gp && gP'

function gcm {
	git commit -m "$*"
}
