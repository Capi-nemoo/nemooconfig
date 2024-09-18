 # package_list.sh
source messages.sh

# Lista de todos los paquetes
packages=(
  "firefox"
  "kitty"
  "neovim"
  "fastfetch"
  "yay"
  "fzf"
  "feh"
  "rofi"
  "vlc"
  "discord"
  "polybar"
  "picom"
  "arandr"
  "wine"
  "keepassxc"
  "exa"
  "steam"
  "dolphin"
  "timeshift"
  "obs-studio"
  "tor"
  "bat"
  "qbittorrent"
  "hyperfine"
  "taskwarrior"
  "nitrogen"
  "obsidian"
  "factorio"
  "youtube-dl"
  "barrier"
  "zsh"
  "oh-my-zsh"
  "lvim"
)

# Preguntar si desea ver la lista de paquetes o una descripción antes de instalar
echo -e "$msg_options"
echo -e "$msg_option1"
echo -e "$msg_option2"
read -p "$msg_choose_option" option

# Mostrar lista de paquetes o descripciones según la opción seleccionada
if [[ $option == "1" ]]; then
  echo "$msg_packages_list"
  for pkg in "${packages[@]}"; do
    echo "- $pkg"
  done
elif [[ $option == "2" ]]; then
  echo "$msg_packages_description"
  for pkg in "${packages[@]}"; do
    description="${package_descriptions[$pkg]}"
    echo -e "- \e[1m$pkg\e[0m: $description"
  done
else
  echo "$msg_invalid_option"
  exit 1
fi
#

