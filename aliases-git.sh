alias gs='git status'
alias gd='git diff'

alias gl='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --numstat'
alias gld='log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative'

alias ga='git add'
alias gaa='ga .'

alias gp='git pull'
alias gpr='gp --rebase'

alias gP='git push'
alias gpP='gp && gP'
alias gprP='gpr && gP'

alias gc='git checkout'
alias gcb='gc -b'

alias gr='git reset'
alias grh='gr HEAD'

alias gst='git stash'
alias gsp='gst pop'

function gaacm {
	gaa && git commit -m "$*"
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
