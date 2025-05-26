#!/bin/bash
tput civis

ctrl_c()
{ 
    echo -e "\n[-] Interrumpido. Saliendo...\n"
    tput cnorm
    exit 1
}

trap ctrl_c INT


main()
{
    sleep 2
    echo -e "\n[+] Creando enlaces simbolicos...\n"

    rm -rf ~/.config/kitty
    rm -rf ~/.config/ranger

    ln -s $(pwd)/kitty ~/.config
    ln -s $(pwd)/ranger ~/.config

    echo -e "\n[+] Finalizado\n"
}

main

tput cnorm
