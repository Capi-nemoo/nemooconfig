# install_packages.sh
# Actualizar el sistema
sudo pacman -Syu --noconfirm

# Instalar paquetes desde los repos oficiales
sudo pacman -S --noconfirm \
  firefox \
  kitty \
  neovim \
  fastfetch \
  fzf \
  feh \
  rofi \
  vlc \
  discord \
  polybar \
  picom \
  arandr \
  wine \
  keepassxc \
  exa \
  steam \
  dolphin \
  timeshift \
  obs-studio \
  tor \
  bat \
  qbittorrent \
  hyperfine \
  nitrogen \
  zsh

# Instalar paquetes desde AUR usando yay
yay -S --noconfirm \
  obsidian \
  factorio \
  youtube-dl \
  barrier \
  oh-my-zsh \
  lvim \
  taskwarrior

