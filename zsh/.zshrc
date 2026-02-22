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
