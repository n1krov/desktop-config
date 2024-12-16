#!/bin/bash

# Instalador de fuentes Nerd Fonts para Hack
# Autor: Z0SO
tput civis

trap ctrl_c INT

# Configuración
FONT_NAME="Hack"
NERD_FONTS_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip"
INSTALL_DIR="/usr/share/fonts/TTF"
TMP_DIR=$(mktemp -d)

# Colores
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"

RESET="\033[0m"

# -- Funciones --
ctrl_c() {
    echo "[INFO] Instalación de $FONT_NAME Nerd Fonts cancelada."
    rm -rf "$TMP_DIR"
    tput cnorm
    exit 1
}

# Función para mostrar errores y salir
error_exit() {
    echo "[ERROR] $1" >&2
    rm -rf "$TMP_DIR"
    tput cnorm
    exit 1
}

main() {
    mkdir -p "$INSTALL_DIR" || error_exit "No se pudo crear el directorio de instalación $INSTALL_DIR"

    echo -e "${CYAN}[INFO] Instalador de fuentes Nerd Fonts para $FONT_NAME${RESET}"
    wget -q --show-progress "$NERD_FONTS_URL" -O "$TMP_DIR/$FONT_NAME.zip" || error_exit "Error al descargar $FONT_NAME Nerd Fonts"

    echo -e "${CYAN}[INFO] Extrayendo archivos...${RESET}"
    unzip -q "$TMP_DIR/$FONT_NAME.zip" -d "$TMP_DIR" || error_exit "Error al extraer los archivos"

    echo -e "${CYAN}[INFO] Instalando fuentes...${RESET}"
    sudo mv -f "$TMP_DIR"/*.ttf "$INSTALL_DIR" || error_exit "No se pudo mover las fuentes al directorio $INSTALL_DIR"

    echo -e "${GREEN}[INFO] Actualizando la caché de fuentes...${RESET}"
    fc-cache -fv || error_exit "Error al actualizar la caché de fuentes"

    # Limpiar archivos temporales
    rm -rf "$TMP_DIR"

    echo -e "${GREEN}[INFO] Instalación de $FONT_NAME Nerd Fonts completada.${RESET}"
    tput cnorm
    exit 0
}

main

