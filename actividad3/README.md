Hugo Sebastian Martínez Hernández
202002793
Sistemas Operativos 1
***

# Parte 1: Gestión de Usuarios

 1. **Creación de Usuarios**
Comandos usados para la creacion de los tres usuarios:
	 - `sudo adduser usuario1`
	 - `sudo adduser usuario2`
	 - `sudo adduser usuario3`
 2. **Asignación de Contraseñas**
 Comandos usados para el cambio de contraseña de los tres usuarios:
	 - `sudo passwd usuario1`
	 - `sudo passwd usuario2`
	 - `sudo passwd usuario3`
	
	**Salida generada** en la ejecucion de los 3 comandos:
passwd: contraseña actualizada correctamente

3. **Información de Usuarios:**
Comando usado:
	- `id usuario1`

	**Salida generada:**
	uid=1001(usuario1) gid=1001(usuario1) grupos=1001(usuario1)

4. **Eliminación de Usuarios**:
	Comando usado:
	- `sudo deluser usuario3`

	**Salida generada:**
	Eliminando al usuario 'usuario3' ...
Aviso: el grupo 'usuario3' no tiene más miembros.
Hecho.

# Parte 2: Gestión de Grupos

 1. **Creación de Grupos**
Comandos usados para la creación de los dos grupos:
	 - `sudo addgroup grupo1`
	 **Salida generada:**
	 Añadiendo el grupo 'grupo1' (GID 1003) ...
	Hecho.
	 - `sudo addgroup grupo2`
	 **Salida generada:**
	 Añadiendo el grupo 'grupo2' (GID 1004) ...
	Hecho.
	
 2. **Agregar Usuarios a Grupos:**
 Comandos usados para agregar usuarios a grupos:
	 - `sudo usermod -g grupo1 usuario1`
	 - `sudo usermod -g grupo2 usuario2`
	
	**Salida generada** en la ejecucion de los 3 comandos:
passwd: contraseña actualizada correctamente

3. **Verificar Membresía:**
 Comandos usados para verificar que los usuarios fueron agregados a los grupos:
	 - `groups usuario1`
	**Salida generada:**
	usuario1 : grupo1
	
	 - `groups usuario2`
	**Salida generada:**
	usuario2 : grupo2
	
	**Salida generada** en la ejecucion de los 3 comandos:
passwd: contraseña actualizada correctamente

4. **Eliminar Grupo**:
	Comando usado:
	- `sudo delgroup grupo2`

	**Salida generada:**
	/usr/sbin/delgroup: ¡'usuario2' aún tiene a 'grupo2' como su grupo primario!


# Parte 3: Gestión de Permisos

 1. **Creación de Archivos y Directorios**

	Como 'usuario1', crea un archivo llamado 'archivo1.txt' en su directorio principal y escribe algo en él.

	Comandos usados:
	Comando para iniciar sesión con el usuario1
	 - `su usuario1`
	Comando para dirigirse al home del usuario1:
	- `cd ~`
	Comando para crear el archivo:
	- `nano archivo1.txt`
	Se escribe un texto dentro del archivo y se guarda.
	
	Crea un directorio llamado 'directorio1' y dentro de ese directorio, un archivo llamado 'archivo2.txt'.
	
	Comandos usados:
	Comando para crear el directorio
	 - `mkdir directorio1`
	Comando para dirigirse al directorio1:
	- `cd directorio1`
	Comando para crear el archivo:
	- `nano archivo2.txt`
	Se escribe un texto dentro del archivo y se guarda.
	
 2. **Verificar los Permisos:**

	Verifica los permisos del archivo '**archivo1.txt**':
	
	Comando usado:
	- `ls -l`
	**Salida generada:**
	total 8
-rw-r--r-- 1 usuario1 grupo1   42 ago  9 18:31 archivo1.txt
drwxr-xr-x 2 usuario1 grupo1 4096 ago  9 18:37 directorio1
	
	Verifica los permisos del directorio '**/home/usuario1**':
	
	Comando usado:
	 - `ls -ld`
	**Salida generada:**
	drwxr-x--- 4 usuario1 grupo1 4096 ago  9 18:36 .
 
	Verifica los permisos del archivo '**archivo2.txt**':
	
	Comando usado:
	- `ls -l`
	**Salida generada:**
	total 4
-rw-r--r-- 1 usuario1 grupo1 43 ago  9 18:37 archivo2.txt
	
	Verifica los permisos del directorio '**directorio1**':
	
	Comando usado:
	 - `ls -ld`
	**Salida generada:**
	drwxr-xr-x 2 usuario1 grupo1 4096 ago  9 18:37


3. **Modificar Permisos usando chmod con Modo Numérico:**

	Comando usado:
	- `chmod 640 archivo1.txt`	 

4.  **Modificar Permisos usando chmod con Modo Simbólico**:

	Primero dirigirse al directorio 'directorio1' que es donde se encuentra el archivo 'archivo2.txt'.
 
	Comando usado:
	- `chmod u+x archivo2.txt`

5. **Cambiar el Grupo Propietario:**
	
	Comando usado:
	- `sudo chown :grupo1 archivo2.txt`

	**Salida generada:**
	usuario1 no está en el archivo sudoers. Se informará de este incidente.

6. **Configurar Permisos de Directorio:**

	Comando usado:
	- `chmod 550 directorio1`

7. **Comprobación de Acceso:**
	Comandos usados:
	
	Comando para iniciar sesión con el usuario2:
	
	 - `su usuario2`

	Intentando acceder a el archivo 'archivo1.txt':
	
	    cat /home/usuario1/archivo1.txt
	

	**Salida generada:**
	cat: /home/usuario1/archivo1.txt: Permiso denegado

	Intentando acceder a el archivo 'archivo2.txt':
	
	    cat /home/usuario1/directorio1/archivo1.txt
	

	**Salida generada:**
	cat: /home/usuario1/directorio1/archivo2.txt: Permiso denegado

 8. **Verificación Final:**

	Verifica los permisos del archivo '**archivo1.txt**':
	
	Comando usado:
	- `ls -l archivo1.txt`
	**Salida generada:**
	-rw-r----- 1 usuario1 grupo1 42 ago  9 18:31 archivo1.txt
	
	Verifica los permisos del directorio '**/home/usuario1**':
	
	Comando usado:
	 - `ls -ld`
	**Salida generada:**
	drwxr-x--- 4 usuario1 grupo1 4096 ago  9 19:41 .
 
	Verifica los permisos del archivo '**archivo2.txt**':
	
	Comando usado:
	- `ls -l archivo2.txt`
	**Salida generada:**
	total 4
-rwxr--r-- 1 usuario1 grupo1 43 ago  9 18:37 archivo2.txt
	
	Verifica los permisos del directorio '**directorio1**':
	
	Comando usado:
	 - `ls -ld`
	**Salida generada:**
	dr-xr-x--- 2 usuario1 grupo1 4096 ago  9 18:37 .
