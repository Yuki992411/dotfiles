autoload -Uz compinit
compinit

[[ -s "$HOME/.bun/_bun" ]] && source "$HOME/.bun/_bun"

source <(docker completion zsh)
source <(kubectl completion zsh)
