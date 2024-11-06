#!/bin/bash

BASE_DIR="/home/nemoolnvo/repos"

# Recorre cada uno de los repositorios dentro del directorio BASE_DIR
for repo in $(find "$BASE_DIR" -type d -name ".git" | sed 's|/.git||'); do
    echo \n "Procesando repositorio: $repo"
    cd "$repo"

    # Ejecuta git pull para actualizar el repositorio
    git pull

    # Añade todos los cambios
    git add .

    # Verifica si hay algo para añadir
    if [ -n "$(git status --porcelain)" ]; then
        echo "Se detectaron cambios en $repo"
        read -p "Ingrese el mensaje del commit: " commit_msg
        git commit -m "$commit_msg"
        git push
    else
        echo "No hay cambios para añadir en $repo"
    fi

done

echo "Proceso completado."

