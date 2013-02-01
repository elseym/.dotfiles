function _chomp_path() {
    local path=`pwd`
    #local path=${1/${HOME}/\~}
    local last=${path} sedout= count=0 path2=

    sedout=`echo $path| sed 's,[^/],,g'`
    count=${#sedout}
    if ((count > 2)); then
      last="…"
      path2=${path%/*}
      path2=${path2%/*}
      last+=${path//${path2}}
    fi
    echo ${last}
}

function _vagrant_status() {
	local vmuuid=`egrep -o '[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{8}' .vagrant 2>/dev/null`
	local vmpid=`pgrep -f $vmuuid 2>/dev/null`
	local color=$light_red
	local VERB="vm"

	if [ -n "$vmuuid" ]; then
		if [ -n "$vmpid" ]; then
			color=$light_green
		fi
		printf -- "$1" "$color$VERB$nocolor"
	fi
}

export GIT_PS1_SHOWDIRTYSTATE="1"
export GIT_PS1_SHOWSTASHSTATE="1"
export GIT_PS1_SHOWUNTRACKEDFILES="1"
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS=true

case $USER in
 root)  UC=$light_red;  PR="\[$light_blue\] # \[$nocolor\]"; ;;
 *)     UC=$white;      PR="\[$light_blue\] $ \[$nocolor\]"; ;;
esac
HOST=$(hostname -s 2>/dev/null || hostname)

PS_SMILE='$(if [[ $? -eq 0 ]]; then echo -e "\[\e[0;33m\]^_^\[\e[0m\]"; else echo -e "\[\e[0;36m\]-_-\[\e[0m\]"; fi;)'
PS_ID="\[$dark_gray\](\[$UC\]$USER\[$light_gray\]@\[$brown\]$HOST\[$dark_gray\])\[$nocolor\]"
PS_PWD="\[$dark_gray\]:(\[$UC\]"\`_chomp_path\`"\[$dark_gray\])\[$nocolor\]"
PS_GIT="\`__git_ps1 \"\[$dark_gray\]:(\[$light_cyan\]%s\[$dark_gray\])\[$nocolor\]\"\`"
PS_VAGRANT="\`_vagrant_status \"\[$dark_gray\]:(\[$nocolor\]%b\[$dark_gray\])\[$nocolor\]\"\`"

export PS1=${PS_SMILE}${PS_ID}${PS_PWD}${PS_GIT}${PS_VAGRANT}$PR
