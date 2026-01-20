#!/bin/bash

# ----------------------------------------------------------
# Script homogéneo de instalación y configuración
# Autor: Z0SO & n1krov
# ----------------------------------------------------------

tput civis

# --- Colores ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
END='\033[0m'

# --- Funciones ---
function ctrl_c() {
    echo -e "\n${RED}󰜺  Saliendo...${END}"
    tput cnorm
    exit 1
}
trap ctrl_c INT


sudo pacman -S wget unzip --noconfirm


# --- Instalación de Nerd Fonts (Hack) ---
FONT_NAME="Hack"
NERD_FONTS_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip"
INSTALL_DIR="/usr/share/fonts/TTF"
TMP_DIR=$(mktemp -d)

echo -e "${CYAN}[INFO] Instalando Nerd Fonts ($FONT_NAME)...${END}"
mkdir -p "$INSTALL_DIR" || ctrl_c

wget -q --show-progress "$NERD_FONTS_URL" -O "$TMP_DIR/$FONT_NAME.zip" || ctrl_c
unzip -q "$TMP_DIR/$FONT_NAME.zip" -d "$TMP_DIR" || ctrl_c
sudo mv -f "$TMP_DIR"/*.ttf "$INSTALL_DIR" || ctrl_c
fc-cache -fv || ctrl_c
rm -rf "$TMP_DIR"
echo -e "${GREEN}[INFO] Nerd Fonts ($FONT_NAME) instaladas correctamente.${END}"

# --- Instalación de Neovim ---
echo -e "\n${CYAN}💻 Instalando Neovim...${END}"
sudo pacman -Syu --noconfirm neovim
echo -e "${GREEN}✅ Neovim instalado correctamente. Ejecuta 'nvim' para comprobar.${END}"

# --- Instalación de Rust ---
echo -e "\n${CYAN}💻 Instalando Rust...${END}"
sudo pacman -Syu --noconfirm rustup
rustup default stable
echo -e "${GREEN}✅ Rust instalado correctamente.${END}"

# --- Instalación de Batcat ---
echo -e "\n${CYAN}💻 Instalando Batcat...${END}"
sudo pacman -Syu --noconfirm bat
echo -e "${GREEN}✅ Batcat instalado correctamente. Ejecuta 'bat --version' para comprobar.${END}"

# --- Instalación de ZSH y complementos ---
echo -e "\n${CYAN}💻 Instalando ZSH y complementos...${END}"
sudo pacman -Syu --noconfirm zsh zsh-syntax-highlighting zsh-autosuggestions

# --- Instalación de Powerlevel10k ---
echo -e "\n${CYAN}💻 Instalando Powerlevel10k...${END}"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

# --- Configuración ZSH como shell por defecto ---
echo -e "\n${CYAN}💻 Configurando ZSH como shell por defecto...${END}"
chsh -s $(which zsh)

# --- Archivos de configuración ---
echo -e "\n${CYAN}💻 Configurando archivos de ZSH y Powerlevel10k...${END}"
rm -f ~/.zshrc ~/.p10k.zsh
cd ..
ln -s $(pwd)/.zshrc ~/
ln -s $(pwd)/.p10k.zsh ~/
cd archlinux


# --- Plugin Sudo para ZSH ---
echo -e "\n${CYAN}💻 Instalando plugin Sudo para ZSH...${END}"
sudo mkdir -p /usr/share/zsh-sudo
sudo wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -P /usr/share/zsh-sudo/

# --- Instalación de FZF ---
echo -e "\n${CYAN}💻 Instalando FZF...${END}"
sudo pacman -Syu --noconfirm fzf

# --- Configuración FZF ---
echo -e "\n${CYAN}💻 Configurando FZF...${END}"
/usr/share/fzf/install --all --no-bash --no-fish

echo -e "\n${YELLOW}⚠️ Nota para root: ${END}${GREEN}Si necesitas configurar FZF para el usuario root, instala FZF en la carpeta /root/.fzf.${END}"

echo -e "\n${GREEN}✅ Instalación y configuración completada. Reinicia la terminal para aplicar los cambios.${END}"

tput cnorm
exit 0
