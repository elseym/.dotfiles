#!/usr/bin/env zsh

BASEDIR=${0%/*}

if [ ! -L "${HOME}/.zshrc" ]; then
  [ -f "${HOME}/.zshrc" ] && mv "${HOME}/.zshrc" "${HOME}/.zshrc.original"
  ln -sf "${BASEDIR}/.zshrc" "${HOME}"
fi

HOSTCONF="${BASEDIR}/hosts/$(hostname -s |shasum -a256 |cut -f1 -d' ')"
[ -r "${HOSTCONF}" ] && source "${HOSTCONF}"

source "${BASEDIR}/initialisation.zsh"

source "${BASEDIR}/functions.zsh"

antigen bundles < "${BASEDIR}/bundles.antigen"

antigen theme elseym/.dotfiles themes/onel

