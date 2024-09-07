### ¡Hola Mundo!

Esta es una breve introducción a este pequeño pero interesante proyecto.

#### Objetivo a corto plazo

Poder instalar todas mis configuraciones mediante un TUI (Terminal User Interface).

#### Objetivo a largo plazo

Crear un programa para generar tus propios dotfiles (archivos de configuración) fácilmente. Planeo lograr esto utilizando Rust, y la característica más importante será que también podrás crear tu propio script de instalación.

#### Objetivos Generales

* Extraer tus dotfiles de su ubicación predeterminada y almacenarlos en una carpeta para poder subirlos a Git fácilmente.
* Crear symlinks (enlaces simbólicos) por cada archivo que se maneje.
* Debe lucir y funcionar con las teclas de Vim.
* Instalar una lista de paquetes:
  * Preguntar si los quieres todos o solo algunos.
    * ¿Sí? Entonces descarga todo y muestra un mensaje cuando termine de instalarlos.
    * ¿No? Entonces preguntar si:
      * Ver la lista y excluir paquetes.
      * Ver la lista e incluir paquetes.

#### Integración con Netboot.xyz

Netboot.xyz es una herramienta que permite iniciar e instalar sistemas operativos directamente desde la red, utilizando PXE (Preboot Execution Environment). En este proyecto, planeo integrar Netboot.xyz para ofrecer una opción de arranque desde la red, que permitirá:

* Iniciar el sistema directamente desde Netboot.xyz.
* Acceder a un menú personalizado que te permitirá seleccionar la instalación de tus dotfiles junto con el sistema operativo de tu elección.
* Automatizar la instalación de sistemas operativos y configuraciones personalizadas en máquinas nuevas sin necesidad de medios físicos.

Esta integración facilitará la instalación y configuración de tus sistemas desde cualquier lugar con acceso a la red, haciendo el proceso mucho más eficiente y flexible.

#### Notas adicionales

Este proyecto también incluirá una configuración personalizada para Netboot.xyz que permitirá cargar directamente tus dotfiles y configuraciones específicas después de la instalación del sistema operativo.

