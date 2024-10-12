#Instala cowsay para mostrar los mensajes

sudo pacman -S cowsay 

#Actualiza el arch(btw)
cowsay -f dragon "Upgrading the Arch(btw)(btw)......" 
sudo pacman -Syu

#Lista de paquetes a instalar
PACKAGES=( 
                    "neovim" 
                    "git" 
                    "htop"
                    "btop"
                    "picom"
                    "i3"
                    "polybar"
                    "zsh"
                    "alacritty"
                    "feh"
                    "tmux"

)

for package in "${PACKAGES[@]}"; do
    animal=$(shuf -n 1 << EOF
tux
dragon
sheep
elephant
koala
daemon
tux
ghostbusters
stegosaurus
hellokitty
moose
skeleton
pony-smaller
flaming-sheep
EOF
)
    cowsay -f $animal "Do you want $package on your system????"
    sudo pacman -S $package
done

cowsay -f tux "You're good to go! All packages installed and ready."

if ! command -v yay &> /dev/null; then
    cowsay -f tux "Instalando yay..."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi


