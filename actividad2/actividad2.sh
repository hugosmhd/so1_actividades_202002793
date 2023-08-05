#!/bin/bash

current_user=$(curl -s https://api.github.com/users/$1)
id_user=$(echo $current_user | jq -r '.id')
creation_date=$(echo $current_user | jq -r '.created_at')

echo "Hola $1. User ID: $id_user. Cuenta fue creada el: $creation_date."

current_date=$(date +"%d-%m-%Y")
url_log="/tmp/$current_date/saludos.log"
mkdir -p "$(dirname "$url_log")"
echo "Hola $1. User ID: $id_user. Cuenta fue creada el: $current_date." >> "$url_log"
