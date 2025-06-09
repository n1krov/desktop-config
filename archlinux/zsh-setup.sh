#!/bin/bash

# Colores para mensajes
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
END='\033[0m'

# ----------------------------------------------------------
echo -e "\n${CYAN}💻 Instalando ZSH y complementos...${END}"

# Instalar ZSH y complementos desde los repositorios de Arch
sudo pacman -Syu --noconfirm zsh zsh-syntax-highlighting zsh-autosuggestions

echo -e "\n${CYAN}💻 Instalando Powerlevel10k...${END}"

# Instalar Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k

echo -e "\n${CYAN}💻 Configurando ZSH como shell por defecto...${END}"

# Cambiar la shell predeterminada a ZSH
chsh -s $(which zsh)

echo -e "\n${CYAN}💻 Configurando archivos de ZSH y Powerlevel10k...${END}"

# Crear enlaces simbólicos para la configuración
rm -f ~/.zshrc ~/.p10k.zsh
ln -s $(pwd)/.zshrc ~/
ln -s $(pwd)/.p10k.zsh ~/

echo -e "\n${CYAN}💻 Instalando plugin Sudo para ZSH...${END}"

# Descargar el plugin sudo para ZSH
sudo mkdir -p /usr/share/zsh-sudo
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -P /usr/share/zsh-sudo/

echo -e "\n${CYAN}💻 Instalando FZF...${END}"

# Instalar FZF desde los repositorios oficiales
sudo pacman -Syu --noconfirm fzf

echo -e "\n${CYAN}💻 Configurando FZF...${END}"

# Opcional: ejecutar el instalador para funcionalidades extra
/usr/share/fzf/install --all --no-bash --no-fish

echo -e "\n${YELLOW}⚠️ Nota para root: ${END}${GREEN}Si necesitas configurar FZF para el usuario root, instala FZF en la carpeta /root/.fzf.${END}"

echo -e "\n${GREEN}✅ Configuración completada. Reinicia la terminal para aplicar los cambios.${END}"


