[ -L ${HOME}/.zshrc ] || (
  [ -f ${HOME}/.zshrc ] && mv ${HOME}/.zshrc ${HOME}/.zshrc.original
  ln -sf ./.zshrc ${HOME}
)

# load bundles
antigen bundles < ./bundles.antigen

# load theme
antigen theme $(cat ./theme.antigen)
