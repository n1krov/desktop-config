#!/bin/bash

# colores
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
white='\033[0;37m'
nc='\033[0m'



tput civis

function ctrl_c ()
{
    tput cnorm
    echo "Exiting..."
    exit 1
}

trap ctrl_c INT


function control_root()
{
    if [ "$EUID" -ne 0 ]
    then
        echo -e "${red}Error: Debes ser root para ejecutar este script${nc}"
        exit
    fi
}


# setup de ubuntu server post instalacion


control_root


echo -e "${green}Actualizando sistema...${nc}"
apt update -y
apt upgrade -y

echo -e "${green}Instalando paquetes necesarios...${nc}"
apt install -y vim htop curl wget git zsh unzip zsh-syntax-highlighting zsh-autosuggestions build-essential openssh-server

clear
echo -e "${green}Configuracion del Acceso remoto mediante SSH...${nc}"
echo -e "${yellow}Verificando si el servicio SSH esta corriendo...${nc}"

if [ $(systemctl is-active ssh) = "active" ]
then
    echo -e "${green}El servicio SSH esta corriendo...${nc}"
else
    echo -e "${red}El servicio SSH no esta corriendo...${nc}"
    echo -e "${yellow}Iniciando el servicio SSH...${nc}"
    systemctl start ssh
    systemctl enable ssh
    echo -e "${green}El servicio SSH se inicio correctamente...${nc}"
fi

sleep 2
clear

echo -e "${yellow}SSH configuracion...${nc}"


# para que otros usuarios sce conecten por ssh deberian conocer la direccion ip del servidor
echo -e "${yellow}Verificando la direccion IP del servidor...${nc}"

ip=$(hostname -I | awk "{print $1}")

echo -e "${green}La direccion IP del servidor es: ${nc}"

echo -e "${blue}$ip${nc}"


echo -e "${yellow}Para conectarse al servidor por SSH, otros usuarios deben ejecutar el siguiente comando...${nc}"
echo -e "${blue}ssh usuario@$ip${nc}"


echo -e "${green}Configuracion del Acceso remoto mediante SSH finalizada...${nc}"
echo -e "${green}Te queda por hacer: ${nc}"
echo -e "${blue}1. Crear usuarios${nc}"
echo -e "${blue}2. Aplicar Seguridad adicional (desactivar root, cambiar puerto)${nc}"

tput cnorm
