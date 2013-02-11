alias gs='git status'
alias gd='git diff'
alias gl='git lg'

alias ga='git add'
alias gaa='ga .'

alias gp='git pull'
alias gpr='git pull --rebase'
alias gP='git push'
alias gpP='gp && gP'
alias gprP='gpr && gP'

alias gc='git checkout'
alias gr='git reset HEAD'

alias gst='git stash'
alias gsp='gst pop'

function gaacm {
	gaa
	git commit -m "$*"
}

function gcm {
	git commit -m "$*"
}
