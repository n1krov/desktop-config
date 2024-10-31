#!/bin/bash
#--------------------------------------------
#--- Script de inicializacion
#--- Autor: Z0SO
#-------------------------------------------

# Ocultar el cursor
tput civis

#--------------------------------------------
#---Variables
#--------------------------------------------

# colores
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[0;33m'
readonly BLUE='\033[0;34m'
readonly PURPLE='\033[0;35m'
readonly CYAN='\033[0;36m'
readonly WHITE='\033[0;37m'
readonly BLACK='\033[0;30m'
readonly BOLD='\033[1m'
readonly UNDERLINE='\033[4m'
readonly INVERTED='\033[7m'
readonly BLINK='\033[5m'
readonly HIDDEN='\033[8m'
readonly ITALIC='\033[3m'
readonly STRIKE='\033[9m'

# Fondo
readonly BG_DEFAULT='\033[49m'

readonly BG_RED='\033[41m'
readonly BG_GREEN='\033[42m'
readonly BG_YELLOW='\033[43m'
readonly BG_BLUE='\033[44m'
readonly BG_PURPLE='\033[45m'
readonly BG_CYAN='\033[46m'
readonly BG_WHITE='\033[47m'
readonly BG_BLACK='\033[40m'
readonly BG_BOLD='\033[1m'
readonly BG_UNDERLINE='\033[4m'
readonly BG_INVERTED='\033[7m'
readonly BG_BLINK='\033[5m'
readonly BG_HIDDEN='\033[8m'
readonly BG_ITALIC='\033[3m'
readonly BG_STRIKE='\033[9m'

# Reset
readonly END='\033[0m'


#--------------------------------------------
#---Funciones
#--------------------------------------------

function ctrl_c() {
    echo -e "\n${RED}󰜺  Saliendo...${END}"
    tput cnorm
    exit 0
}


function bienvenida() {
    clear
    echo -e "\n${GREEN} ${END} ${CYAN}SCRIPT DE INICALIZACION${END}"
    sleep 2


echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣫⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⡀⠄⠻⣿⣿⣿⣿⣿⣿⣿⣿⣮⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠂⠁⠀⡐⠀⠂⢀⠀⠀⠀⢀⠂⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⡽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣛⣛⣿⣯⣭⣭⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⡼⣏⢿⣩⣾⣿⣿⠀⢄⡄⡅⣠⢀⠂⠀⠠⠀⠐⠀⡀⢈⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⠿⣟⣛⣿⣭⣭⣿⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡼⣝⡞⣱⣿⣿⣿⠃⠀⠂⠉⠁⠀⠀⠈⠈⠁⠷⠂⠤⢀⡀⠀⠐⢿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣟⣿⣽⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣝⣳⢍⣾⣿⣿⣿⡟⢸⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠡⠠⠜⡿⣿⣷⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢹⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣽⠮⣱⣿⣿⣿⣿⣿⡇⣷⠀⠀⠀⠀⠀⣰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠹⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣟⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣊⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⠾⢥⣾⣿⣿⣛⢟⢿⣿⡂⣿⠀⠀⠀⠀⢀⣧⠀⠀⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣷⣯⡻⢿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣻⣽⣾⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡫⢏⣵⣿⣿⣿⣿⣿⣿⣮⣿⡅⣿⠀⠀⠀⠀⠘⣛⡀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡪⢝⣛⡛⣛⣯⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⡵⣽⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⡇⣿⠀⠀⠀⡀⣼⣿⡇⢠⣿⡆⠀⢀⡆⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⢴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⢀⣤⠄⠀⠀⠀⠈⠙⠲⣄⠈⣿⣷⣾⢀⡆⠀⡇⣿⣿⡇⣸⣿⣷⠀⣸⣆⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿⣿⣿⣿⠟⢀⠀⠀⣹⣤⠀⢠⠀⢀⣀⣸⣤⡈⠇⣿⣿⡇⣸⣧⠀⡏⠀⠀⠀⠈⠉⠉⠀⠿⣇⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡌⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣿⣿⣿⣿⣿⠁⡀⣸⠀⣷⣸⢻⣄⠈⠀⠀⢈⣼⣿⢃⣾⣿⣿⣿⣿⣿⣆⠃⢠⠀⠀⠀⠀⠀⢰⣄⠀⠀⢀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⡼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠉⠙⣿⣿⣿⣿⣿⣿⣿⣹⣿⣿⣿⣿⣿⣿⣿⣿⢃⡴⣷⣎⠀⢿⡽⠏⣩⢖⡳⣢⢬⣯⣵⣿⣿⣿⣿⠟⡿⣿⣿⣇⣿⡀⠡⠄⡜⠛⣺⣿⡇⠀⠈⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿"
echo "⣿⣞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠘⢿⣿⣿⣿⣿⣿⣧⡻⣿⣿⣿⣿⣿⣿⣇⡼⠤⢿⡿⠀⢈⢁⣆⡇⣞⣡⢣⠞⣹⣿⣿⣿⣿⣷⣙⢜⣸⣿⣿⣳⠲⢤⢤⣰⣺⠿⣟⡅⣾⠃⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿"
echo "⣿⣿⣞⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⢨⢿⣿⣿⣿⣿⡿⣽⣮⢿⣿⣿⣿⣿⠸⡌⠳⡈⣿⠀⠸⣾⣾⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿⣷⣰⢧⢰⠞⣩⢻⢿⡇⢣⠁⠀⠀⠀⠀⡀⣿⣿⣿⣿⣿⣿⢹⣿⣿⣿⣿⣯⣿⣽⣿⣿⣿"
echo "⣿⣿⣿⣎⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠂⠀⢸⡏⢭⣟⡿⣻⣵⣿⣿⣯⡻⣿⣿⣿⡄⠣⠳⣶⣿⠀⣦⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣯⣾⣴⣾⣻⠍⠀⠀⠀⠀⠀⢸⡇⢻⣿⣿⣿⣿⡏⣿⣿⣿⣿⣿⣽⣿⣻⣽⣿⣿"
echo "⣿⡿⣿⣿⣯⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢨⠀⠀⢸⣧⠈⢟⣿⣾⢿⣿⣿⣿⣿⣽⣿⣿⣷⠀⠈⠈⠉⠀⢿⣿⣿⣿⣿⣿⣷⣜⢿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣘⠀⠀⠀⠀⠀⣾⡇⢸⣿⣿⣿⣿⢳⣿⣿⣿⣿⣟⣯⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣷⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⢣⢳⠀⠀⢸⡇⠀⠘⣿⣿⣷⡿⣿⣿⣿⣷⢻⣿⣿⡇⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣭⣽⣛⣻⣫⣿⣿⣿⣿⣿⣿⠏⠘⠂⠀⠀⠀⠀⠀⣿⣇⢸⣿⣿⣿⡿⣾⣿⣿⣿⣿⣿⡿⣿⣯⣿⡿⣿"
echo "⣿⣿⣿⣿⣿⣿⠀⠙⣿⣿⣿⣿⣿⣿⣿⠏⢮⠅⠀⠀⣾⡇⠀⠀⠈⠹⣽⣿⣝⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠈⣿⣿⣿⢷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿"
echo "⣿⣿⣿⣿⣿⡇⠀⠀⠈⢿⣿⣿⣿⡿⢣⡝⠮⠀⠀⢀⣿⠃⠀⠀⠀⠀⢿⣿⣿⣞⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢉⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⢿⡿⡀⣿⣿⡿⣾⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⢿⣿"
echo "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠻⠿⢫⡘⢦⣙⠃⠀⠀⣼⡟⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠰⡸⢬⣙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣾⢷⡇⢻⣿⢧⣿⣿⣿⣿⣿⣿⣿⣷⢿⣟⣯⣿⣟"
echo "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠈⢣⡝⢮⠀⠀⠀⣰⡟⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠰⢙⢦⢣⢏⡜⣙⠻⠿⠿⠛⡋⢡⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡾⡇⢸⣿⣼⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠚⠁⠀⠀⣰⡟⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢸⣷⣌⢓⠮⡜⣥⢋⢧⢣⡝⡜⢣⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⢷⣷⢸⣿⣿⣿⣿⣿⣿⢿⣟⣿⡿⣷⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣷⣝⠜⢦⣋⢎⡳⣜⡩⢇⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢿⣿⣾⣿⢸⣿⣟⣿⣿⣿⣾⣿⣻⣯⣿⢿⣽⡿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⢰⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⣦⣾⣿⣿⣿⣿⣿⣷⣵⡘⢮⡱⢦⡹⡌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢸⣷⣿⣿⢸⢿⣿⡼⣿⣷⣿⣾⢿⣽⣿⣻⣯⣿⣟⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⢠⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣧⣥⣥⣶⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡸⣿⣿⡟⣸⣸⣯⣷⢻⣿⣿⣿⣿⣯⣷⣿⣿⣽⣿⣟"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣇⡀⠀⠀⠀⢀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠩⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⢇⣿⣿⡟⣿⣏⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿"
echo "⣿⣽⣾⣿⣿⣿⣿⣿⣿⣿⣄⠀⢀⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⣮⣟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⠄⢀⠀⠀⠀⠀⠀⠀⠀⢹⡿⣼⣿⣿⣷⣿⣿⡼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣮⣝⡿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣟⡟⣛⠀⢈⠂⠀⠀⠀⠀⠀⠀⢘⣽⣿⣿⣯⣿⣿⣿⣿⣹⣿⣿⣿⣿⣾⣿⣿⣿⣿"
echo "⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣾⣿⣿⣿⣭⣾⣿⣿⣿⣿⣿⣿⡆⠈⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣷⢻⣿⣿⣿⣟⣿⣿⡿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣻⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠗⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢿⣿⣯⣿⣿⡷⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⢷⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠿⠿⠿⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡞⣿⣿⣿⣯⣿⣿⢿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢟⡿⣪⣷⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣹⣿⣿⣿⣿⣾⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢫⣵⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣿⣿⣯⣷⣿"
echo "⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣸⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢰⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⡀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣐⢚⡘⠧⠻⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⠀⠀⠀⠀⠀⡆⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠒⠀⠚⠃⠨⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⠯⠘⡂⠀⠂⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣧⢿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠁⢀⠠⠍⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣯⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⢀⣀⡤⣴⣶⣿⣿⣿⣿⣿⡏⣶⣦⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠡⠊⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣸⣇⠀⠀⢿⡀⠀⠀⠀⠀⠀⠸⣿⣿⡽⣿⣸⣿⣿⣿⣿⠻⣿⣻⡿⣿⣿⣿⣿⢷⣶⢠⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠛⠉⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣱⣿⣿⣆⠀⠸⣧⠀⠀⠀⠀⠀⠀⣿⣷⣿⡹⣧⢿⣿⣿⡿⣼⣿⡿⠝⢉⣭⣭⡉⠛⢏⣿⣿⣿⡋⢺⣿⡿⠶⣶⣶⣦⣤⣤⣤⣤⣤⣄⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣵⣿⣿⣿⣿⣷⡀⢻⣧⠀⠀⠀⠀⠀⢸⣿⣟⣷⣹⡞⣿⣿⡇⣿⣿⠃⠀⣾⣿⡿⣿⡇⠈⣿⡟⡝⣀⠀⣿⣷⣶⠀⢰⣤⣼⡿⠃⢻⣿⣿⠓⢛⡛⢻⣿⢻⡟⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣻⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⢿⡇⠀⠀⠀⠀⠀⣿⣿⣻⣧⢳⣻⣿⡇⣿⡿⣇⠀⢻⣿⣿⣟⠃⢀⣿⡞⢀⠛⠀⠸⣿⣿⠀⢸⣿⣟⢁⣆⠘⣿⣎⠀⠿⠇⢠⣟⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣽⣾⡿⣿⣽⣾⢿⣟⣯⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⡇⠀⢰⠀⠀⡇⢸⣿⡿⣽⣧⠏⣿⡇⣿⢿⣿⣷⣤⣉⣓⠁⢤⣾⡟⣠⣿⣿⣷⠀⢹⣿⠀⢸⡟⢀⣶⣶⡀⠹⣼⠀⣆⠐⣿⣻⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⡿⣾⢷⣿⣯⣟⣿⣿⣯⣿⣟⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⡿⣟⡃⢀⡾⣥⠀⢧⠀⣿⣿⣟⣿⡞⣿⣿⣿⣟⣯⣷⡿⣿⢯⣶⢄⡭⣿⠋⢹⣷⠉⡟⢛⡛⠟⢻⣷⢺⣿⢻⡧⣢⠧⣤⣿⠠⢼⡏⠀⠀⠀⣀⣀⣀⣤⣤⠶⠞⠋⠁⢘⣿⣿⣿⣿⣿⣿⣿⣿"

sleep 1
echo -e "\n ${YELLOW}[  ] ${END} ${BOLD}Para distribuciones Debian${END}"

}


function deb_zsh(){
    clear
    echo -e "\n ${CYAN} ${END} ${GREEN} Instalando ZSH ${END}"

    # Instalación de paquetes esenciales usando apt
    sudo apt update && sudo apt install -y zsh openssh-client npm wget lsd bat kitty

    # Instalación de plugins de zsh y utilidades adicionales
    sudo apt install -y zsh-autosuggestions zsh-syntax-highlighting scrub

    echo -e "\n ${CYAN} ${END} ${GREEN} Creando los enlaces simbólicos...${END}"
    sleep 1

    # Crear enlaces simbólicos para la configuración de ZSH
    rm ~/.zshrc
    ln -s $(pwd)/.zshrc ~/.zshrc
    
    rm ~/.p10k.zsh
    ln -s $(pwd)/.p10k.zsh ~/.p10k.zsh

    # Cambiar la shell por defecto a ZSH
    echo -e "\n ${CYAN} ${END} ${GREEN} Cambiando la shell por defecto a ZSH...${END}"
    sleep 1
    chsh -s /bin/zsh

    # Configuración de Kitty
    clear
    echo -e "\n ${CYAN} ${END} ${GREEN} Configurando Kitty...${END}"
    sleep 1
    rm -rf ~/.config/kitty && ln -s $(pwd)/kitty ~/.config/kitty/

    # Instalación de Powerlevel10k
    clear
    echo -e "\n ${CYAN} ${END} ${GREEN} Instalando POWERLEVEL10K ${END}"
    sleep 1
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

    # Aplicar configuración a root
    echo -e "\n ${CYAN} ${END} ${GREEN} Aplicando a root...${END}"
    sleep 1
    sudo ln -s -f /home/$USER/.zshrc /root/.zshrc
    sudo ln -s -f /home/$USER/.p10k.zsh /root/.p10k.zsh
    sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/powerlevel10k
    sudo chsh -s /bin/zsh

    # Instalación de plugins de ZSH
    clear
    echo -e "\n ${CYAN} ${END} ${GREEN} PLUGINS DE ZSH ${END}"
    sleep 1

    # Plugin sudo
    echo -e "\n ${CYAN} ${END} ${GREEN} Sudo plugin ${END}"
    sleep 1
    sudo mkdir -p /usr/share/zsh-sudo
    wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -P /usr/share/zsh-sudo/

    # Plugin fzf
    echo -e "\n ${CYAN} ${END} ${GREEN} Plugin fzf ${END}"
    sleep 1
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all

    echo -e "\n ${YELLOW} NOTA: ${END} ${GREEN} Para aplicar a root, ejecutar el siguiente comando${END}"
    echo -e "\n Ponte en root y ejecuta los siguientes comandos \n"
    echo -e "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf"
    echo -e "~/.fzf/install --all"
}

#--------------------------------------------


trap ctrl_c INT

bienvenida
deb_zsh


# Mostrar el cursor
tput cnorm
