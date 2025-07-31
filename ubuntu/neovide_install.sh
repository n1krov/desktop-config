#!/bin/bash
tput civis

# set -e es para detener el script si ocurre un error
set -e

# colores
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[0;33m'
readonly WHITE='\033[0;37m'
readonly END='\033[0m'

trap ctrl_c INT

ctrl_c() {
  echo -e "\n${RED}Interrupción del script.${END}"
  tput cnorm
  exit 1
}

instalar_dependencias ()
{
    echo "${YELLOW}Instalando dependencias necesarias...${END}"
    sudo apt update
    sudo apt install -y git curl build-essential libgtk-3-dev libwebkit2gtk-4.1-dev pkg-config libssl-dev


}

instalar_rust ()
{
    echo "${YELLOW}Verificando si Rust está instalado...${END}"
    if ! command -v cargo &> /dev/null; then
        curl https://sh.rustup.rs -sSf | sh -s -- -y
        source $HOME/.cargo/env
    else
        echo "${GREEN}Rust ya está instalado.${END}"
    fi
}


instalar_neovide ()
{
    echo "${YELLOW}Instalando Neovide...${END}"
    git clone https://github.com/neovide/neovide.git
    cd neovide

    echo "${YELLOW}Configurando el entorno de Rust...${END}"
    cargo build --release

    echo "${YELLOW}Instalando Neovide en /usr/local/bin...${END}"
    sudo cp ./target/release/neovide /usr/local/bin/
}



main() {
    echo "${GREEN}Iniciando la instalación de Neovide para UBUNTU...${END}"

    instalar_dependencias
    instalar_rust
    instalar_neovide

    echo "${GREEN}Neovide instalado correctamente.${END}"
    echo "${WHITE}Puedes ejecutar Neovide con el comando: neovide${END}"
}


main

tput cnorm
