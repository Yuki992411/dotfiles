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

# SDKMAN
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# All repositories are in "repos".
if [ -f ~/repos/run.zsh ]; then
	source ~/repos/run.zsh
fi
