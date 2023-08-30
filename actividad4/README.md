**Hugo Sebastian Martínez Hernández -
202002793 -
Sistemas Operativos 1**

--\---------------------------------------------------------------
# Actividad 4
La actividad 4 consistía en: crear un systemd unit de tipo servicio para ejecutar un script imprima un saludo y la fecha actual. Los pasos para realizar esta tarea se describen a continuacion:

1. Crear el script que se va a ejecutar para ello usamos vim para crear y escribir el contenido. El script generado quedo de la siguiente manera:
![script actividad 4](https://media.discordapp.net/attachments/764502305009303622/1146444341443833957/image.png?width=745&height=426)
2. Al script generado se le tienen que cambiar los permisos para que se pueda ejecutar.
```
chmod 777 actividad4_script.sh
```
3. Nos dirigimos por medio de la terminal al siguiente directorio para crear el systemd unit de tipo servicio
```
cd /etc/systemd/system/
```
4. Con permisos de superusuario creamos un archivo con la ayuda de la herramienta vim.
```
vim act4.service
```
Y se le coloca la siguiente informacion:
![Contenido act4.service](https://media.discordapp.net/attachments/764502305009303622/1146463754461122570/imagen.png?width=745&height=426)

    [Unit]
    
    Description= Actividad 4 que consiste en realizar un systemd unit de tipo servicio
    
    [Service]
    User=hugosmh
    ExecStart=/home/hugosmh/Escritorio/TAREAS_SOPES1/so1_actividades_202002793/actividad4/actividad4_script.sh
    [Install]
    WantedBy=multi-user.target


5. Se ejecuta el siguiente comando para recargar la configuración de los servicios y unidades controlados por systemd.

```
sudo systemctl daemon-reload  
```

6. Ejecutamos tambien el siguiente comando para habilitar el servicio act4.service
```
sudo systemctl enable act4.service
```
7. El siguiente comando se encarga de iniciar el servicio act4.service.
```
sudo systemctl start act4.service 
```
8. Ejecutamos el siguiente comando para obtener el estado y la información actual del servicio act4.service
```
sudo systemctl status act4.service
```

El resultado final es el siguiente:
![Resultado final de la actividad 4](https://media.discordapp.net/attachments/764502305009303622/1146466351377043477/imagen.png?width=745&height=426)
