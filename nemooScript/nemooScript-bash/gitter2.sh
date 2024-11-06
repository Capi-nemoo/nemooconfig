#!/bin/bash

# Repositorios activos
declare -a active_repos=("nemooconfig" "myWeb" "myArch-btw-" "SofiaWebsite" "SitioPablo" "SolanaWorkshop" "Linux-ID-Generator")

# Repositorios inactivos
declare -a inactive_repos=("easyboot.xyz" "dotEngine.xyz" "DotNetwork.xyz" "Website-shell" "SynthNet-Project" "TerminalShare" "roommateDetector" "Texas-Tech-app" "HiLetgo-3.5-TFT-Easy-Tutorial" "wiki1" "assembly")

# Función para clonar repositorios a una ubicación específica
clone_to() {
    local repo_name=$1
    local target_dir=$2
    local git_base_url="git@github.com:TuUsuario"  # Cambia 'TuUsuario' por tu nombre de usuario en GitHub

    # Checar si el directorio ya existe para evitar sobrescribir
    if [ ! -d "$target_dir/$repo_name" ]; then
        echo "Clonando $repo_name en $target_dir"
        git clone "$git_base_url/$repo_name.git" "$target_dir/$repo_name"
    else
        echo "El repositorio $repo_name ya existe en $target_dir"
    fi
}

# Clonar repositorios activos
for repo in "${active_repos[@]}"; do
    clone_to "$repo" "$HOME/repos/active"
done

# Clonar repositorios inactivos
for repo in "${inactive_repos[@]}"; do
    clone_to "$repo" "$HOME/repos/inactive"
done

