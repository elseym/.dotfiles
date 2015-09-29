
# took this from steeef
turquoise="$fg[cyan]" orange="$fg[yellow]" purple="$fg[magenta]" hotpink="$fg[red]" limegreen="$fg[green]"
[[ $TERM =~ '(256color|rxvt)' ]] && turquoise="%F{81}" orange="%F{166}" purple="%F{135}" hotpink="%F{161}" limegreen="%F{118}"

eval "hostnamecolour=\"\${${PS1_HOSTCOLOR:-orange}}\""

PROMPT=$'
%{$turquoise%}%n%{$reset_color%} at %{$hostnamecolour%}%m%{$reset_color%} in %{$orange%}%~%{$reset_color%}$(git-radar --zsh --fetch)%{$reset_color%}
$ '
