# messages.sh

# Asegúrate de que la variable $lang está definida y exportada

# Definir mensajes según el idioma seleccionado
if [[ "$lang" == "es" ]]; then
  # Mensajes en Español
  # ... (otros mensajes)

  # Descripciones de paquetes en Español
  declare -A package_descriptions=(
    ["firefox"]="Navegador web popular y seguro."
    ["kitty"]="Emulador de terminal rápido y personalizable."
    ["neovim"]="Editor de texto avanzado basado en Vim."
    ["fastfetch"]="Herramienta rápida para mostrar información del sistema."
    ["yay"]="AUR helper para instalar paquetes de Arch User Repository."
    ["fzf"]="Herramienta de búsqueda rápida para la terminal."
    ["feh"]="Visor de imágenes ligero para la terminal."
    ["rofi"]="Lanzador de aplicaciones y cambiador de ventanas."
    ["vlc"]="Reproductor multimedia versátil."
    ["discord"]="Plataforma de comunicación para comunidades."
    ["polybar"]="Barra de estado personalizable para gestores de ventanas."
    ["picom"]="Compositor de ventanas para efectos como sombras y transparencias."
    ["arandr"]="Herramienta gráfica para configurar monitores."
    ["wine"]="Ejecuta aplicaciones de Windows en Linux."
    ["keepassxc"]="Gestor de contraseñas seguro."
    ["exa"]="Reemplazo moderno de 'ls' con colores y más funciones."
    ["steam"]="Plataforma de distribución de videojuegos."
    ["dolphin"]="Administrador de archivos para KDE."
    ["timeshift"]="Herramienta de respaldo y restauración del sistema."
    ["obs-studio"]="Software de grabación y transmisión de video."
    ["tor"]="Navegador para navegación anónima."
    ["bat"]="Reemplazo mejorado de 'cat' con resaltado de sintaxis."
    ["qbittorrent"]="Cliente de BitTorrent con interfaz gráfica."
    ["hyperfine"]="Benchmarking de tiempo de ejecución de comandos."
    ["taskwarrior"]="Gestor de tareas basado en la línea de comandos."
    ["nitrogen"]="Herramienta para configurar fondos de pantalla."
    ["obsidian"]="Aplicación de toma de notas basada en markdown. (AUR)"
    ["factorio"]="Videojuego de construcción y gestión de recursos. (AUR)"
    ["youtube-dl"]="Descargador de videos de YouTube y otros sitios. (AUR)"
    ["barrier"]="Comparte teclado y ratón entre múltiples PCs. (AUR)"
    ["zsh"]="Shell avanzada y personalizable."
    ["oh-my-zsh"]="Framework para gestionar configuraciones de zsh. (AUR)"
    ["lvim"]="Versión personalizada y extendida de Neovim. (AUR)"
  )

else
  # Messages in English
  # ... (other messages)

  # Package descriptions in English
  declare -A package_descriptions=(
    ["firefox"]="Popular and secure web browser."
    ["kitty"]="Fast and customizable terminal emulator."
    ["neovim"]="Advanced text editor based on Vim."
    ["fastfetch"]="Fast tool to display system information."
    ["yay"]="AUR helper to install packages from Arch User Repository."
    ["fzf"]="Fast search tool for the terminal."
    ["feh"]="Lightweight image viewer for the terminal."
    ["rofi"]="Application launcher and window switcher."
    ["vlc"]="Versatile multimedia player."
    ["discord"]="Communication platform for communities."
    ["polybar"]="Customizable status bar for window managers."
    ["picom"]="Window compositor for effects like shadows and transparency."
    ["arandr"]="Graphical tool to configure monitors."
    ["wine"]="Runs Windows applications on Linux."
    ["keepassxc"]="Secure password manager."
    ["exa"]="Modern replacement for 'ls' with colors and more features."
    ["steam"]="Video game distribution platform."
    ["dolphin"]="File manager for KDE."
    ["timeshift"]="System backup and restore tool."
    ["obs-studio"]="Video recording and streaming software."
    ["tor"]="Browser for anonymous browsing."
    ["bat"]="Enhanced replacement for 'cat' with syntax highlighting."
    ["qbittorrent"]="BitTorrent client with graphical interface."
    ["hyperfine"]="Command execution time benchmarking."
    ["taskwarrior"]="Command-line based task manager."
    ["nitrogen"]="Tool to set wallpapers."
    ["obsidian"]="Markdown-based note-taking application. (AUR)"
    ["factorio"]="Construction and resource management game. (AUR)"
    ["youtube-dl"]="Video downloader for YouTube and other sites. (AUR)"
    ["barrier"]="Share keyboard and mouse between multiple PCs. (AUR)"
    ["zsh"]="Advanced and customizable shell."
    ["oh-my-zsh"]="Framework to manage zsh configurations. (AUR)"
    ["lvim"]="Custom and extended version of Neovim. (AUR)"
  )
fi

