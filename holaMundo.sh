#!/bin/bash

# Instalar dependencias necesarias (si no están instaladas)
sudo apt-get update -y > /dev/null 2>&1
sudo apt-get install -y zenity wmctrl curl > /dev/null 2>&1

# Simulación de hackeo
xdg-open "data:text/html,<html><body style='background:black;color:green;font-family:monospace;text-align:center;'>
<h1>⚠️ SYSTEM BREACH DETECTED ⚠️</h1>
<p>Unauthorized access detected. Tracking IP address...</p>
<p>Deploying countermeasures...</p>
<script>
setTimeout(() => { document.body.innerHTML += '<p style=\'color:red;\'>🔴 Connection compromised! Sending data to remote server...</p>'; }, 3000);
</script>
</body></html>"


printf '\e[8;50;200t'; echo -e "\e[42;32m"; curl ASCII.live/can-you-hear-me
nohup xdg-open https://youtu.be/dQw4w9WgXcQ?si=ICRKaRQPwwkXAW5C >/dev/null 2>&1 &
