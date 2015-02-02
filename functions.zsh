#!/usr/bin/env zsh

function elunalias {
  [ "${1}" -a "${2=${1:0:1}}" ] && \
    alias |grep -E "^'?${2}.*${1}" |cut -d= -f1 |\
      while read a; do unalias "${a//'/}"; done
}
