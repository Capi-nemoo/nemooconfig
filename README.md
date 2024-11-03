# nemooconfig

https://github.com/user-attachments/assets/fcc2b7a5-5781-4344-89aa-57f1025129db

Nemooconfig is a Bash script designed to automate the installation of all the applications I use daily on my Arch Linux machines (btw). It’s built with flexibility in mind, allowing admins to filter out packages they don't need and even add their own. It also supports multiple languages, including English and Spanish.

## Features

- **Package Filtering**: Choose only the packages you need and skip those you don't.
- **Customization**: Easily add your own packages 
- **Multilanguage Support**: Available in English and Spanish.
- **Ease of Use**: Just run the script and let everything install automatically.

## Requirements

- Arch Linux (btw)
- Internet connection

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/nemooconfig.git
   ```
2. Navigate to the cloned directory:
   ```bash
   cd nemooconfig
   ```
3. Make the script executable:
   ```bash
   chmod +x nemooconfig.sh
   ```
4. Run the script:
   ```bash
   ./nemooconfig.sh
   ```

## Files Structure

```

mi-project-dot-engine/
├── .github/                      # GitHub-specific configurations (e.g., workflows)
│   └── workflows/
├── Dotfiles/                     # Dotfiles for various configurations
│   └── myDotfiles/               # Personal configuration files and resources
│       ├── 003.jpg
│       ├── 003-2.png
│       ├── config.jsonc
│       ├── .zshrc
│       ├── alacritty.toml
│       └── nvim/                 # NeoVim configuration
│           ├── init.lua
│           └── plugin/
│               ├── packer_compiled.lua
│               └── lua/
│                   ├── plugins.lua
│                   └── lsp.lua
│       ├── zsh/
│           └── _.zshrc
│       └── picom/
│           └── picom.conf
├── config/                       # Application-specific configurations
│   ├── alacritty/
│       └── alacritty.toml
│   ├── nvim/                     # NeoVim configuration in system config
│       ├── init.lua
│       └── plugin/
│           ├── packer_compiled.lua
│           └── lua/
│               ├── plugins.lua
│               └── lsp.lua
│   ├── lazygit/
│       └── config.yml
│   ├── dconf/
│       └── user
│   ├── starship.toml
│   ├── btop/
│       ├── btop.log
│       └── btop.conf
│   ├── i3/
│       └── config
│   ├── polybar/
│       ├── launch.sh
│       └── config.ini
│   ├── fastfetch/
│       ├── config.jsonc
│       └── image.jpg
│   └── picom/
│       └── picom.conf
├── nemooScript/                  # Scripts and tools
│   ├── nemooScript-tui/
│       └── rust-tui/
│           ├── Cargo.toml
│           └── src/
│               └── main.rs
│   ├── nemooScript-bash/
│       ├── testCommands/
│           └── find_file.bash
│       ├── versions/
│           ├── nemooScript_0.0.1_.bash
│           └── nemooScript_0.0.2_.bash
│       ├── nemooScript-sh/
│           ├── downloadPackages.bash
│           └── scriptComplete.bash
│       └── gitscript.sh
│   ├── nemooScript-py/
│       └── nemooScript.py
│   └── nemooScript-ansible/
│       └── ansiblev01.ansible
├── giphy.mp4                     # Media file or demo video
├── .DS_Store                     # System-generated file
└── README.md                     # Main project README with documentation

```


---

