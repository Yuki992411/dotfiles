export EDITOR='vim'

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000

# For coloring dir
export CLICOLOR=1
base16_monokai

# setup pure
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:git:branch color yellow

export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.volta/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/usr/local/go/bin:/usr/local/opt/libpq/bin:/usr/local/opt/mysql-client/bin:$PATH"

# completions
autoload -Uz compinit
compinit

# All repositories are in "repos".
if [ -f ~/repos/run.zsh ]; then
	source ~/repos/run.zsh
fi

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# SDKMAN
[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ] && source "$HOME/.sdkman/bin/sdkman-init.sh"
