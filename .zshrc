ANTIGEN=$HOME/.antigen/antigen.zsh

if ! test -r ${ANTIGEN}; then
	mkdir -p ${ANTIGEN%/*}
	curl -Lo- https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ${ANTIGEN}
fi
	
source $HOME/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle elseym/.dotfiles
antigen apply
