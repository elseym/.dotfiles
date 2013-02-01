export TERM='xterm'
export PATH="/usr/local/bin:/usr/local/sbin:`echo $PATH | sed 's/\/usr\/local\/bin\:*//g'`:/usr/local/share/npm/bin"
export NODE_PATH="/usr/local/lib/node_modules:/usr/local/lib/node_modules/npm"

export GIT_EDITOR=nano
export EDITOR=nano
export CVS_RSH=ssh

export HISTTIMEFORMAT="%F %T "
export HISTCONTROL=ignoredups
export LESS="-erX"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[ -n "$TMUX" ] && export TERM='screen-256color'

