# confirm_installation.sh
source language_selection.sh

# Confirmación antes de proceder
if [[ $lang == "es" ]]; then
  read -p "¿Quieres proceder con la instalación? (s/n): " confirm
else
  read -p "Do you want to proceed with the installation? (y/n): " confirm
fi

if [[ $confirm == "s" || $confirm == "S" || $confirm == "y" || $confirm == "Y" ]]; then
  echo "Proceeding with installation..."
else
  if [[ $lang == "es" ]]; then
    echo "Instalación cancelada."
  else
    echo "Installation cancelled."
  fi
  exit 0
fi

