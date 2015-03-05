#!/usr/bin/env zsh

##
# mpx - command multiplexer
# cd into each dir and execute all commands there.
#  usage: mpx [dir,...] [--] command [,command,...]
#
function mpx { local wds= cwd="$(pwd)" cmd=
  while [ ${#} -gt 0 ]; do
    [ -d "${1}" ] && wds="${wds} ${1}" && shift || break
    [ "--" = "${1}" ] && shift && break
  done
  cmd="${@}"
  for wd in "${wds##*( )}"; do
    echo "[${0##*/}] executing '${cmd}' in '${wd}'..."
    cd ${wd} && ${cmd}; cd ${cwd}
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
