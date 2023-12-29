alias f='ls -alF'
alias ll='ls -alF'
alias doc='cd ~/Documents'
alias dl='cd ~/Downloads'

alias gw='git switch'
alias ks='kubectl'
alias vimf='vim `fzf`'

alias conv='pnpm i && pnpm test:static && pnpm test -- --runInBand --coverage & pnpm doc'
