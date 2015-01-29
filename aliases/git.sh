# git
## add
alias ga='git add'
alias gap='ga --patch'
alias gai='ga --interactive'
alias gaa='ga --all'

## pull
alias gp='git pull'
alias gpr='gp --rebase=true'

## diff
alias gd='git diff'
alias gdc='gd --cached'

## status
alias gs='git status --short --branch'
alias gsl='gs --long'

## reset
alias ge='git reset'
alias geh='gR --hard'
alias geh@='geh @'

## push
alias gu='git push'
alias guu='gu -u'

## log
alias gl='git log'
alias glm='gl --pretty=%B'
alias glml='glm -1 |head -n1'

## commit
alias gc='git commit'
alias gcm='gc -m'
alias gcam='gc -a -m'

## checkout
alias go='git checkout'
alias gob='go -b'

## branch
alias gb='git branch'
alias gba='gb -a'

## remote
alias gr='git remote'
alias grv='gr -v'
alias gra='gr add'

## stash
alias gt='git stash'
alias gtp='gt pop'