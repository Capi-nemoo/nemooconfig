#!/bin/bash

# Función para verificar la ubicación de los dotfiles y el directorio de destino
check_locations() {
  dotfiles_dir="$1"
  install_dir="$2"

  # Verificar si el directorio de los dotfiles existe
  if [[ ! -d "$dotfiles_dir" ]]; then
    echo "Error: El directorio de dotfiles no existe en $dotfiles_dir."
    exit 1
  fi

  # Verificar si el directorio de instalación existe o crearlo si no existe
  if [[ ! -d "$install_dir" ]]; then
    echo "El directorio de instalación no existe en $install_dir. Creándolo..."
    mkdir -p "$install_dir"
    if [[ $? -ne 0 ]]; then
      echo "Error: No se pudo crear el directorio de instalación en $install_dir."
      exit 1
    fi
  fi

  echo "Las ubicaciones están correctamente configuradas."
  echo "Dotfiles en: $dotfiles_dir"
  echo "Instalación en: $install_dir"
}

# Llamada a la función (reemplaza con tus rutas)
dotfiles_path="$HOME/dotfiles"
install_path="$HOME/.config"

check_locations "$dotfiles_path" "$install_path"
