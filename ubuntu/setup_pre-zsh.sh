#!/bin/bash
tput civis

# Colores para mensajes
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
END='\033[0m'

trap ctrl_c INT


function ctrl_c() {
    echo -e "\n${YELLOW}⚠️ Saliendo del script...${END}"
    tput cnorm
    exit 1
}


function main() {

    echo -e "\n${CYAN}💻 Instalando Neovim...${END}"

    # Descargar la última versión estable de Neovim
    wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -O nvim.appimage
    chmod u+x nvim.appimage

    # Mover a /usr/local/bin para agregar al PATH
    sudo mv nvim.appimage /usr/local/bin/nvim

    echo -e "\n${GREEN}✅ Neovim instalado correctamente. Ejecuta 'nvim' para comprobar.${END}"

    # ----------------------------------------------------------

    # echo -e "\n${CYAN}💻 Instalando Rust...${END}"
    # curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    # source $HOME/.cargo/env

    # echo -e "\n${GREEN}✅ Rust instalado correctamente.${END}"
    #
    # echo -e "${YELLOW}⚠️ Nota: Asegúrate de reiniciar la terminal para que Rust se configure correctamente en el PATH.${END}"

    # ----------------------------------------------------------

    echo -e "\n${CYAN}💻 Instalando Batcat y LSD...${END}"
    sudo apt install -y bat lsd

    echo -e "\n${GREEN}✅ Batcat y LSD instalado correctamente. Ejecuta 'bat/lsd --version' para comprobar.${END}"

    # ----------------------------------------------------------

    echo -e "\n${CYAN}💻 Instalación completada.${END}"

    tput cnorm
}

main
