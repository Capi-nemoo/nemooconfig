#!/bin/bash

# Check if Git is installed, if not, install it
if ! [ -x "$(command -v git)" ]; then
  echo "Git is not installed. Installing..."
  sudo pacman -Sy git --noconfirm
else
  echo "Git is already installed."
fi

# Ask if user wants to skip the Git configuration step
read -p "Do you want to skip Git configuration? (y/n): " skip_config

if [[ "$skip_config" != "y" ]]; then
  # Configure Git username and email
  read -p "Enter your Git username: " git_username
  read -p "Enter your Git email: " git_email

  git config --global user.name "$git_username"
  git config --global user.email "$git_email"
  git config --global init.defaultBranch main

  echo "Git configuration completed."
else
  echo "Skipping Git configuration..."
fi

# List of your repositories
repos=(
  "git@github.com:Capi-nemoo/README.md.git"
  "git@github.com:Capi-nemoo/nemooconfig.git"
  "git@github.com:Capi-nemoo/Website-shell.git"
  "git@github.com:Capi-nemoo/dotEngine.xyz.git"
  "git@github.com:Capi-nemoo/DotNetwork.xyz.git"
  "git@github.com:Capi-nemoo/HiLetgo-3.5-TFT-Easy-Tutorial.git"
  "git@github.com:Capi-nemoo/Texas-Tech-app.git"
  "git@github.com:Capi-nemoo/SynthNet-Project-University.git"
  "git@github.com:Capi-nemoo/easyboot.xyz.git"
  "git@github.com:Capi-nemoo/myWeb.git"
  "git@github.com:Capi-nemoo/assembly.git"
  "git@github.com:Capi-nemoo/FoodieFind.git"
  "git@github.com:Capi-nemoo/TerminalShare.git"
)

# Directory where the repositories will be cloned
read -p "Enter the directory where you want to clone the repositories (default ~/repos): " repo_dir
repo_dir=${repo_dir:-~/repos}

mkdir -p "$repo_dir"
cd "$repo_dir"

# Clone each repository from the list
for repo in "${repos[@]}"; do
  # Extract repo name from the URL
  repo_name=$(basename "$repo" .git)

  # Check if the repo already exists
  if [ -d "$repo_name" ]; then
    echo "Repository $repo_name already exists, skipping..."
  else
    echo "Cloning $repo_name..."
    git clone "$repo"
  fi
done

echo "All repositories have been processed."

