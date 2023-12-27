# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "wintermi/zsh-starship"
#plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/fzf"

# Load and initialise completion system
autoload -Uz compinit
compinit

# Run Rust binaries from ~/.cargo/bin/
export PATH=$PATH:$HOME/.cargo/bin

# Open neofetch
# clear
# neofetch

# Initialize Starship
export STARSHIP_CONFIG=~/.config/starship.toml

# Initialize nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Default editor
export EDITOR=nvim
