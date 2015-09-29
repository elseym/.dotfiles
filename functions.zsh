#!/usr/bin/env zsh

##
# mpx - command multiplexer
# cd into each dir and execute all commands there.
#  usage: mpx [dir,...] [--] command [,command,...]
#
function mpx { local ds= cwd="$(pwd)"
  while [ ${#} -gt 0 ]; do
    [ -d "${1}" ] && ds="${ds} ${1}" && shift || break
    [ "--" = "${1}" ] && shift && break
  done
  [ ${#} -gt 0 ] && for d in ${=ds}; do
    echo -e "\n\033[4;1;30m[${0##*/}] in '${d}':\033[0m"
    cd ${d} && for m in ${@}; do eval "${m}"; done; cd ${cwd}
  done
}

##
# elunalias - semantic unalias
# deletes all alias-definitions containing verb and starting with prefix.
# prefix defaults to the first letter of verb.
#  usage: elunalias verb [prefix]
#
function elunalias {
  [ "${1}" -a "${2=${1:0:1}}" ] && \
    alias |grep -E "^'?${2}.*${1}" |cut -d= -f1 |\
      while read a; do unalias "${a//'/}"; done
}

##
# unlock - unlock remote luks
#
function unlock { local host="${1:?usage: unlock HOST}"
  echo -ne "enter passphrase for ${1}: "
  read -s unlockpassword
  ssh ${1}-unlock "echo -ne ${unlockpassword} > /lib/cryptsetup/passfifo"
}
