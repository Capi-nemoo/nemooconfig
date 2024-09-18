# messages.sh

# Asegúrate de que la variable $lang está definida y exportada
# Puedes definir $lang en 'language_selection.sh' y exportarla:
# export lang

# Definir mensajes según el idioma seleccionado
if [[ "$lang" == "es" ]]; then
  # Mensajes en Español
  msg_welcome="¡Bienvenido al instalador!"
  msg_select_language="Selecciona idioma (es/en): "
  msg_options="Opciones:"
  msg_option1="1) Ver lista de paquetes"
  msg_option2="2) Ver descripción corta de los paquetes"
  msg_choose_option="Elige una opción (1/2): "
  msg_packages_list="Los siguientes paquetes se instalarán:"
  msg_proceed_install="¿Quieres proceder con la instalación? (s/n): "
  msg_installation_cancelled="Instalación cancelada."
  msg_installation_complete="¡Instalación completada con éxito!"
  msg_add_packages="¿Deseas agregar más paquetes a la instalación? (s/n): "
  msg_enter_package="Ingresa el nombre del paquete que quieres agregar: "
  msg_package_exists="El paquete '%s' existe y será instalado."
  msg_package_not_found="El paquete '%s' no existe en los repositorios."
  msg_add_another="¿Deseas agregar otro paquete? (s/n): "
  msg_no_additional_packages="No se agregarán más paquetes."
  msg_have_dotfiles_repo="¿Tienes un repositorio Git para tus dotfiles? (s/n): "
  msg_enter_repo_url="Ingresa la URL de tu repositorio de dotfiles: "
  msg_clone_location="¿Dónde deseas clonar tus dotfiles? (por defecto es ~/dotfiles): "
  msg_directory_exists="El directorio %s ya existe."
  msg_delete_and_reclone="¿Deseas eliminarlo y volver a clonarlo? (s/n): "
  msg_skipping_clone="Saltando clonación. Usando el directorio existente."
  msg_cloning_dotfiles="Clonando dotfiles en %s."
  msg_creating_symlinks="Creando enlaces simbólicos para los dotfiles..."
  msg_backup_existing="Respaldo del archivo/directorio existente en %s"
  msg_symlink_created="Enlace simbólico creado: %s -> %s"
  msg_dotfiles_complete="¡Instalación de dotfiles y configuración de enlaces simbólicos completa! 🎉"
else
  # Messages in English
  msg_welcome="Welcome to the installer!"
  msg_select_language="Select language (en/es): "
  msg_options="Options:"
  msg_option1="1) View package list"
  msg_option2="2) View short description of packages"
  msg_choose_option="Choose an option (1/2): "
  msg_packages_list="The following packages will be installed:"
  msg_proceed_install="Do you want to proceed with the installation? (y/n): "
  msg_installation_cancelled="Installation cancelled."
  msg_installation_complete="Installation completed successfully!"
  msg_add_packages="Do you want to add more packages to the installation? (y/n): "
  msg_enter_package="Enter the package name you want to add: "
  msg_package_exists="The package '%s' exists and will be installed."
  msg_package_not_found="The package '%s' does not exist in the repositories."
  msg_add_another="Do you want to add another package? (y/n): "
  msg_no_additional_packages="No additional packages will be added."
  msg_have_dotfiles_repo="Do you have a Git repository for your dotfiles? (y/n): "
  msg_enter_repo_url="Enter your dotfiles repository URL: "
  msg_clone_location="Where do you want to clone your dotfiles? (default is ~/dotfiles): "
  msg_directory_exists="Directory %s already exists."
  msg_delete_and_reclone="Do you want to delete and re-clone it? (y/n): "
  msg_skipping_clone="Skipping clone. Using the existing directory."
  msg_cloning_dotfiles="Cloning dotfiles into %s."
  msg_creating_symlinks="Creating symlinks for dotfiles..."
  msg_backup_existing="Backup of existing file/directory at %s"
  msg_symlink_created="Created symlink: %s -> %s"
  msg_dotfiles_complete="Dotfiles installation and symlinks setup complete! 🎉"
fi

