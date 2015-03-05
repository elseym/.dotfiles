#!/usr/bin/env zsh

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
