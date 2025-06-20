#!/bin/bash

# Colores para mensajes
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
END='\033[0m'

echo -e "\n${CYAN}💻 Instalando ZSH y complementos...${END}"
sudo apt update
sudo apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions

echo -e "\n${CYAN}💻 Instalando Powerlevel10k...${END}"
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo -e "\n${CYAN}💻 Configurando ZSH como shell por defecto...${END}"
chsh -s $(which zsh)

echo -e "\n${CYAN}💻 Configurando archivos de ZSH y Powerlevel10k...${END}"
rm -f ~/.zshrc ~/.p10k.zsh
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.p10k.zsh ~/.p10k.zsh

echo -e "\n${CYAN}💻 Instalando plugin Sudo para ZSH...${END}"
sudo mkdir -p /usr/share/zsh-sudo
sudo wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -P /usr/share/zsh-sudo/

echo -e "\n${CYAN}💻 Instalando FZF...${END}"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

echo -e "\n${YELLOW}⚠️ Nota para root: ${END}${GREEN}Realiza la instalación de FZF también en la carpeta /root/.fzf para configurar root correctamente.${END}"

echo -e "\n${GREEN}✅ Configuración completada. Reinicia la terminal para aplicar los cambios.${END}"
