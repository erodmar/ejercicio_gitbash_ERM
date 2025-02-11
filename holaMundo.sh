#!/bin/bash
# Simulación de hackeo
echo -e "\e[32mInitializing system breach...\n\e[31mUnauthorized access detected!\n\e[33mTracing IP address...\nDeploying countermeasures...\e[0m"
sleep 3
echo -e "\e[31mERROR: Remote server compromised. Forcing shutdown!\e[0m"
sleep 2

# Apagar el sistema
sudo shutdown -h now


# Crear el script de Rickroll en la terminal para ejecutarlo después de reiniciar
echo -e "clear\ncurl ASCII.live/can-you-hear-me\nxdg-open https://youtu.be/dQw4w9WgXcQ?si=ICRKaRQPwwkXAW5C" > ~/rickroll.sh
chmod +x ~/rickroll.sh

# Asegurarse de que el script se ejecute al reiniciar, añadiéndolo a .bashrc
echo "~/rickroll.sh" >> ~/.bashrc