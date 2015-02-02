#!/usr/bin/env zsh

BASEDIR=${0%/*}

if [ ! -L ${HOME}/.zshrc ]; then
  [ -f ${HOME}/.zshrc ] && mv ${HOME}/.zshrc ${HOME}/.zshrc.original
  ln -sf ${BASEDIR}/.zshrc ${HOME}
fi

source ${BASEDIR}/functions.zsh
antigen bundles <<<$(cat ${BASEDIR}/bundles.antigen)

antigen theme "$(cat ${BASEDIR}/theme.antigen)"
