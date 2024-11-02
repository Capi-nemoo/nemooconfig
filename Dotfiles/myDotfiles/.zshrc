export ZSH="$HOME/.oh-my-zsh"

# =====================
# 1. Zsh Options
# =====================
# Configure general Zsh behavior
COMPLETION_WAITING_DOTS="true" #Muestra unos puntos esperando al autocompletado
CASE_SENSITIVE="true" # case-sentitive autocompletion
ENABLE_CORRECTION="true" # auto-correction.
zstyle ':omz:update' mode reminder  # just remind me to update when it's time (Updates)
zstyle ':omz:update' mode reminder  # just remind me to update when it's time (Updates)
zstyle ':omz:update' mode reminder  # just remind me to update when it's time (Updates)
DISABLE_MAGIC_FUNCTIONS="true" #Paste text with no problemo
#source $ZSH/oh-my-zsh.sh #reload the configuration

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi


# =====================
# 2. History Configuration
# =====================
# Configure the history behavior
HISTFILE=~/.zsh_history      # File where history is saved
HISTSIZE=10000               # Number of commands to remember in memory
SAVEHIST=10000               # Number of commands to save in HISTFILE
setopt append_history        # Append to the history file, don't overwrite it
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
alias update="sudo pacman -Syu"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# =====================
# 5. Theme Configuration
# =====================
# Choose your Zsh theme (example: using Oh My Zsh)
ZSH_THEME="robbyrussell"

# =====================
# 6. Plugin Configurations
# =====================
# Load Oh My Zsh and plugins
plugins=(git zsh-syntax-highlighting vi-mode zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# =====================
# 7. Shell Functions
# =====================
# Define custom functions for repetitive tasks
function mkcd() {
  mkdir -p "$1" && cd "$1"
}

# =====================
# 8. Key Bindings
# =====================
# Customize key bindings
bindkey "^R" history-incremental-search-backward
bindkey "^[[A" up-line-or-search

# =====================
# 9. Environment Variables
# =====================
# Set environment variables for custom tools
export EDITOR="nvim"
export VISUAL="nvim"
export LANG="en_US.UTF-8"

# =====================
# 10. Custom Scripts
# =====================
# Source additional configuration files or scripts
#source ~/.config/zsh/custom-scripts.sh

# =====================
# 11. Final Tweaks
# =====================
# Any additional final customizations
#source ~/.zshrc.local  # Include local configuration

# =====================
# 12. Prompt Configuration
# =====================
# Configure Starship prompt or custom Zsh prompt
eval "$(starship init zsh)"



# Created by `pipx` on 2024-10-12 21:05:57
export PATH="$PATH:/home/capinemoo/.local/bin"
