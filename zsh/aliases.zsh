alias f='ls -alF'
alias ll='ls -alF'
alias doc='cd ~/Documents'
alias dl='cd ~/Downloads'

alias gw='git switch'
alias ks='kubectl'
alias vimf='vim `fzf`'

alias conv='pnpm i && pnpm test:static && pnpm test -- --runInBand --coverage & pnpm doc'

function chrome {
	local file=$1

	if [ -f "$file" ]; then
		open -a "Google Chrome" "$file"
	else
		echo -e "\e[33mFile does not exist: $file\e[0m"
		open -a "Google Chrome"
	fi
}
