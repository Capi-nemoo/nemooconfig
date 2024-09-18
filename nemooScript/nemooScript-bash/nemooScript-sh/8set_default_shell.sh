# set_default_shell.sh
# Configurar zsh como shell predeterminada
chsh -s $(which zsh)

if [[ $lang == "es" ]]; then
  echo "¡Instalación completada con éxito!"
else
  echo "Installation completed successfully!"
fi

