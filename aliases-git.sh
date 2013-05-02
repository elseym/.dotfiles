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

function gar {
    [ "$1" ] || return
    RX="$1"
    shift

	while [ "$1" ]; do
		RX="$RX $1"
        shift
	done

	TA=''
	for F in `git status --porcelain |awk '{print $2}'`; do
		for R in $RX; do
            [ "`echo $F | egrep -i $R`" ] || continue 2;
        done
        TA="$TA $F"
	done

    [ "$TA" ] || return

    ga $TA;
}
