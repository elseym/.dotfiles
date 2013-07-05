#!/usr/bin/env bash

[ "$elpath" ] || elpath="."

source "$elpath/options.sh"
source "$elpath/vars.sh"
source "$elpath/colors.sh"

for DFILE in `ls $elpath/{aliases,functions}-*.sh`
do
  source "$DFILE"
done

source "$elpath/ps1.sh"