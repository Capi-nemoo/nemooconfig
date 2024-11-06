#!/bin/bash

BASE_DIR="/home/nemoolnvo/repos"
REPO_LIST="repo_list.txt"

# Si no existe el archivo de repositorios, crearlo
if [ ! -f "$REPO_LIST" ]; then
    find "$BASE_DIR" -type d -name ".git" | sed 's|/.git||' > "$REPO_LIST"
fi

# Mostrar opciones al usuario
echo "Seleccione un repositorio para procesar o elija 'todos':"
select option in $(cat "$REPO_LIST") "todos"; do
    if [ "$option" == "todos" ]; then
        repos=$(cat "$REPO_LIST")
        break
    elif [ -n "$option" ]; then
        repos="$option"
        break
    else
        echo "Opción no válida. Por favor, intente nuevamente."
    fi
done

# Recorre cada uno de los repositorios seleccionados
for repo in $repos; do
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

echo \n "Proceso completado."

