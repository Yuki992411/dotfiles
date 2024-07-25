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

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/usr/local/go/bin:/usr/local/opt/libpq/bin:/usr/local/opt/mysql-client/bin:$PATH"

# completions
autoload -Uz compinit
compinit

# All repositories are in "repos".
if [ -f ~/repos/run.zsh ]; then
	source ~/repos/run.zsh
fi
