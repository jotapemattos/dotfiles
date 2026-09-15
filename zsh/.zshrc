# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Disable OMZ theme (Starship will handle the prompt)
ZSH_THEME=""

# Plugins
plugins=(git zsh-syntax-highlighting)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Zed shortcut
alias zed='open -a "Zed" --args'

# Initialize Starship (MUST be last)
eval "$(starship init zsh)"
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/jotape/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/opt/homebrew/Cellar/bun/1.3.9/share/zsh/site-functions/_bun" ] && source "/opt/homebrew/Cellar/bun/1.3.9/share/zsh/site-functions/_bun"
