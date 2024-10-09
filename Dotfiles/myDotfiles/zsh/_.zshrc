# =====================
# 1. Zsh Options
# =====================
# Configure general Zsh behavior
setopt hist_ignore_dups      # Ignore duplicate commands in history
setopt hist_find_no_dups     # No duplicates when searching in history
setopt autocd                # Change to directory by just typing its name
setopt share_history         # Share history across all Zsh sessions
setopt extended_history      # Record timestamp of command in history
setopt inc_append_history    # Append to history immediately as commands are entered
setopt hist_expire_dups_first# Expire duplicate commands first when trimming history
setopt hist_verify           # Show the command before running it with `!`

# =====================
# 2. History Configuration
# =====================
# Configure the history behavior
HISTFILE=~/.zsh_history      # File where history is saved
HISTSIZE=10000               # Number of commands to remember in memory
SAVEHIST=10000               # Number of commands to save in HISTFILE
setopt append_history        # Append to the history file, don't overwrite it
setopt rehash                # Automatically update $PATH after adding new binaries
setopt hist_ignore_space      # Ignore commands that start with a space
setopt hist_reduce_blanks     # Remove unnecessary blanks when storing commands

# =====================
# 3. Path Configurations
# =====================
# Customize PATH variable
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# =====================
# 4. Aliases
# =====================
# Define your aliases for common commands
alias ll="ls -la"
alias gs="git status"
alias update="sudo apt update && sudo apt upgrade"

# =====================
# 5. Theme Configuration
# =====================
# Choose your Zsh theme (example: using Oh My Zsh)
ZSH_THEME="agnoster"

# =====================
# 6. Prompt Configuration
# =====================
# Configure Starship prompt or custom Zsh prompt
eval "$(starship init zsh)"

# =====================
# 7. Plugin Configurations
# =====================
# Load Oh My Zsh and plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
# =====================
# 8. Shell Functions
# =====================
# Define custom functions for repetitive tasks
function mkcd() {
  mkdir -p "$1" && cd "$1"
}

# =====================
# 9. Key Bindings
# =====================
# Customize key bindings
bindkey "^R" history-incremental-search-backward
bindkey "^[[A" up-line-or-search

# =====================
# 10. Environment Variables
# =====================
# Set environment variables for custom tools
export EDITOR="nvim"
export VISUAL="nvim"
export LANG="en_US.UTF-8"

# =====================
# 11. Custom Scripts
# =====================
# Source additional configuration files or scripts
source ~/.config/zsh/custom-scripts.sh

# =====================
# 12. Final Tweaks
# =====================
# Any additional final customizations
source ~/.zshrc.local  # Include local configuration

