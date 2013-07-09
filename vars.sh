export PHPVER='php54'

export TERM='xterm-256color'

type brew 1>/dev/null 2>&1 && bpfx="$(brew --prefix $PHPVER)/bin:" || bpfx=""
export PATH="$bpfx/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:`echo $PATH | sed 's/\/usr\/local\/bin\:*//g'`:/usr/local/share/npm/bin"
export NODE_PATH="/usr/local/lib/node_modules:/usr/local/lib/node_modules/npm"

export GIT_EDITOR=nano
export EDITOR=nano
export CVS_RSH=ssh

export HISTTIMEFORMAT="%F %T "
export HISTCONTROL=ignoredups
export LESS="-erX"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[ -n "$TMUX" ] && export TERM='xterm-256color'
