Hugo Sebastian Martínez Hernández
202002793
Sistemas Operativos 1
***

# Script Generado

![Script de Bash](https://media.discordapp.net/attachments/764502305009303622/1137172347204419714/imagen.png?width=742&height=426)
Se genero un script de Bash, este realiza una consulta hacia una página de GitHub que obtiene datos acerca del usuario de GitHub. Luego de realizar la consulta se obtiene el id del user y tambien la fecha de creacion del usuario. Al ejecutar el script se imprime en consola el siguiente mensaje:
Hola **hugosmhd**. User ID: **47651460**. Cuenta fue creada el: **2019-02-15T03:04:16Z**.

Salida en consola:
![Salida en Consola del script](https://media.discordapp.net/attachments/764502305009303622/1137174490271461476/imagen.png?width=742&height=426)
**Nota**: Al ejecutar el script se debera pasar el GITHUB_USER por medio de parametros tal y como se ve en la imagen anterior.

# Configuracion cronjob

Tambien se configuro un cronjob para que se ejecutara el script cada 5 minutos. La configuracion del cronjob quedo de la siguiente manera:

![Cronjob configuracion](https://media.discordapp.net/attachments/764502305009303622/1137175685807484958/imagen.png?width=742&height=426)

