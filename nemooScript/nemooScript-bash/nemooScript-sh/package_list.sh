# package_list.sh
source language_selection.sh

# Preguntar si desea ver la lista de paquetes o una descripción antes de instalar
if [[ $lang == "es" ]]; then
  echo -e "Opciones:"
  echo -e "1) Ver lista de paquetes"
  echo -e "2) Ver descripción corta de los paquetes"
  read -p "Elige una opción (1/2): " option
else
  echo -e "Options:"
  echo -e "1) View package list"
  echo -e "2) View short description of packages"
  read -p "Choose an option (1/2): " option
fi

# Mostrar lista de paquetes o descripciones según la opción seleccionada
if [[ $option == "1" ]]; then
  if [[ $lang == "es" ]]; then
    echo "Los siguientes paquetes se instalarán:"
  else
    echo "The following packages will be installed:"
  fi
  # Lista de paquetes
  echo "
  - firefox
  - kitty
  - neovim
  - fastfetch
  - yay
  - fzf
  - feh
  - rofi
  - vlc
  - discord
  - polybar
  - picom
  - arandr
  - wine
  - keepassxc
  - exa
  - steam
  - dolphin
  - timeshift
  - obs-studio
  - tor
  - bat
  - qbittorrent
  - hyperfine
  - taskwarrior
  - nitrogen
  - obsidian (AUR)
  - factorio (AUR)
  - youtube-dl (AUR)
  - barrier (AUR)
  - zsh
  - oh-my-zsh (AUR)
  - lvim (AUR)
  "
elif [[ $option == "2" ]]; then
  # Descripción de los paquetes
  if [[ $lang == "es" ]]; then
    echo "Descripción corta de los paquetes:"
    # Aquí va la descripción de los paquetes en español
  else
    echo "Short description of packages:"
    # Aquí va la descripción de los paquetes en inglés
  fi
fi

