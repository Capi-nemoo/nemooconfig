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
read -p "Do you want to add more packages to the installation? (y/n): " add_more

if [[ "$add_more" == "y" || "$add_more" == "Y" ]]; then
  while true; do
    # Pedir el nombre del paquete
    read -p "Enter the package name you want to add: " package_name
    
    # Verificar si el paquete existe
    if check_package_exists "$package_name"; then
      echo "The package '$package_name' exists and will be installed."
      sudo pacman -S --noconfirm "$package_name"
    else
      echo "The package '$package_name' does not exist in the repositories."
    fi

    # Preguntar 
    read -p "Do you want to add another package? (y/n): " add_another
    if [[ "$add_another" != "y" && "$add_another" != "Y" ]]; then
      break
    fi
  done
else
  echo "No additional packages will be added."
fi

