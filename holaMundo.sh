#!/bin/bash

# Instalar dependencias necesarias (si no están instaladas)
sudo apt-get update -y > /dev/null 2>&1
sudo apt-get install -y zenity wmctrl curl > /dev/null 2>&1

# Mostrar el mensaje de "breach" en zenity (sin HTML completo, solo texto plano)
zenity --info --text="⚠️ SYSTEM BREACH DETECTED ⚠️\nUnauthorized access detected. Tracking IP address...\nDeploying countermeasures..." --width=400 --height=200 &
wait $!  # Espera a que el mensaje se muestre antes de continuar



printf '\e[8;50;200t'; echo -e "\e[42;32m"; curl ASCII.live/can-you-hear-me
nohup xdg-open https://youtu.be/dQw4w9WgXcQ?si=ICRKaRQPwwkXAW5C >/dev/null 2>&1 &
