function ff() {
    find . -type f -iname '*'$*'*' -ls;
}

# find and grep
function ffg() {
    find . -exec grep $* '{}' \; -print ;
}

function al {
  if [ "$1" ]; then NM="$1-"; else NM=""; fi
  # [ "`echo \"$NM\" |grep '\.seym$'`" ] || NM="$NM"".seym"
  ALOG="/var/log/apache2/"$NM"access_log"
  ELOG="`echo "$ALOG" | sed 's/access/error/'`"
  [ -f "$ALOG" ] && [ -f "$ELOG" ] && multitail -n 1000 "$ALOG" -n 1000 "$ELOG"
}

