BASEDIR=${0%/*.*}

if [ ! -L ${HOME}/.zshrc ]; then
  [ -f ${HOME}/.zshrc ] && mv ${HOME}/.zshrc ${HOME}/.zshrc.original
  ln -sf ${BASEDIR}/.zshrc ${HOME}
fi

# set bundles
export ELSEYM_ANTIGEN_BUNDLES=$(cat ${BASEDIR}/bundles.antigen)

# set theme
export ELSEYM_DOTFILES_THEME=$(cat ${BASEDIR}/theme.antigen)
