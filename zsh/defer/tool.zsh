export PATH="$HOME/go/bin:/usr/local/go/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Database clients
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Activate mise after other PATH changes so managed tools take precedence.
eval "$("$HOME/.local/bin/mise" activate zsh)"
