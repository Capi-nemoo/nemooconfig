#!/bin/bash

# Función para verificar si el paquete existe en los repositorios
function check_package_exists() {
  local package_name=$1
  if pacman -Si "$package_name" > /dev/null 2>&1; then
    return 0  # El paquete existe
  else
    return 1  # no existe
  fi
}

# Preguntar si el usuario desea agregar más paquetes
read -p "$msg_add_packages [1 = y]" add_more

if [[ "$add_more" == "1" ]]; then
  while true; do
    # Pedir el nombre del paquete
    read -p "$msg_enter_package" package_name

    # Verificar si el paquete existe
    if pacman -Si "$package_name" > /dev/null 2>&1 || yay -Si "$package_name" > /dev/null 2>&1; then
      printf "$msg_package_exists\n" "$package_name"
      # Instalar el paquete
      sudo pacman -S --noconfirm "$package_name" || yay -S --noconfirm "$package_name"
    else
      printf "$msg_package_not_found\n" "$package_name"
    fi

    # Preguntar si quiere agregar otro paquete
    read -p "$msg_add_another" add_another
    if [[ "$add_another" == "1" ]]; then
      break
    fi
  done
else
  echo "$msg_no_additional_packages"
fi

