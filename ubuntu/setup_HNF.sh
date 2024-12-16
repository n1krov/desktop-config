#!/bin/bash

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Colores

# este script instala Hack Nerd Fonts

tput civis # Oculta cursor

function ctrl_c () 
{
    tput cnorm # Muestra cursor
    echo -e "\n${RED}[*] Saliendo...${NC}"
    exit 1
}

trap ctrl_c INT

echo -e "${GREEN}[*] Instalando Hack Nerd Fonts...${NC}"

mkdir -p ~/.local/share/fonts
wget -P ~/.local/share/fonts "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip"

echo -e "${GREEN}[*] Exrayendo Hack Nerd Fonts...${NC}"
unzip ~/.local/share/fonts/Hack.zip -d ~/.local/share/fonts

echo -e "${GREEN}[*] Actualizando fuentes...${NC}"
fc-cache -fv

echo -e "${GREEN}[*] Hack Nerd Fonts instalado correctamente!${NC}"

tput cnorm # Muestra cursor
