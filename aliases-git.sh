alias gs='git status'
alias gd='git diff'
alias gl='git lg'

alias ga='git add'
alias gaa='ga .'

alias gP='git push'
alias gpP='gp && gP'

alias gc='git checkout'
alias gr='git reset HEAD'

alias gst='git stash'
alias gsp='gst pop'

function gp {
	gs |grep "clean$" >/dev/null 2>&1
	[ $? -eq 0 ] && git pull || git pull --rebase
}

function gaacm {
	gaa
	git commit -m "$*"
}

function gcm {
	git commit -m "$*"
}
