
#!/bin/bash
#!/bin/bash

# Mensaje de commit proporcionado como primer argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 \"mensaje de commit\""
    exit 1
fi

COMMIT_MESSAGE="$1"

# Directorio principal de repositorios
repo_dir="/home/capinemoo/repos"

# Encuentra todos los subdirectorios en el directorio principal que son repositorios de Git
repos=$(find "$repo_dir" -type d -name ".git" | sed 's|/.git||')

# Procesa cada directorio de repositorio encontrado
for dir in $repos; do
    echo "Procesando repositorio: $dir"

    # Cambia al directorio de repositorio
    cd "$dir" || exit

    # Ejecuta los comandos de Git
    git add .
    git commit -m "$COMMIT_MESSAGE"
    git push

    # Regresa al directorio original
    cd - > /dev/null
done

echo "Operaciones en todos los repositorios han sido completadas."

