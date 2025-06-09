#!/bin/bash

# Colores para mensajes
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
END='\033[0m'

# ----------------------------------------------------------
echo -e "\n${CYAN}💻 Instalando Neovim...${END}"

# Instalar Neovim desde los repositorios oficiales
sudo pacman -Syu --noconfirm neovim

echo -e "\n${GREEN}✅ Neovim instalado correctamente. Ejecuta 'nvim' para comprobar.${END}"

# ----------------------------------------------------------
echo -e "\n${CYAN}💻 Instalando Rust...${END}"

# Instalar Rust usando rustup desde los repositorios oficiales
sudo pacman -Syu --noconfirm rustup
rustup default stable

echo -e "\n${GREEN}✅ Rust instalado correctamente.${END}"

# ----------------------------------------------------------
echo -e "\n${CYAN}💻 Instalando Batcat...${END}"

# Instalar Bat desde los repositorios oficiales
sudo pacman -Syu --noconfirm bat


echo -e "\n${GREEN}✅ Batcat instalado correctamente. Ejecuta 'bat --version' para comprobar.${END}"

# ----------------------------------------------------------
echo -e "\n${CYAN}💻 Instalación completada.${END}"
echo -e "${YELLOW}⚠️ Nota: Asegúrate de reiniciar la terminal para que Rust se configure correctamente en el PATH.${END}"

