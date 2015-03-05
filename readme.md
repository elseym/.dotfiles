# .dotfiles

## installation

* either evaluate the `.zshrc`  
  `curl -Lo- https://raw.githubusercontent.com/elseym/.dotfiles/master/.zshrc | zsh`

* or replace your existing `.zshrc` and re-login  
  `curl -Lo- https://raw.githubusercontent.com/elseym/.dotfiles/master/.zshrc > ~/.zshrc && exec ${0#-}`
