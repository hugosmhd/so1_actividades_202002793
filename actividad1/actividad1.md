# 1. ¿Qué es el Kernel?
Es el núcleo del sistema operativo. Se encarga de supervisar la organización de procesos y datos de cada ordenador en un segundo plano. Sin él, nada funcionaria. Por medio del kernel obtenemos un interfazamiento entre el software y el hardware. 

El kernel se encuentra en el centro del sistema operativo y controla todas las funciones importantes del hardware, ya sea un sistema Linux macOS o Windows, un smartphone, un servidor, una virtualización como KVM o cualquier otro tipo de ordenador.

## Tipos de Kernel
Existen diferentes tipos de kernel para diferentes sistemas operativos y dispositivos finales. Conforme a sus características, pueden dividirse en tres grupos:

 1. **Kernel monolítico:** Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.

 2. **Microkernel:** El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.
 
![Monolitov vs Microkernel](https://media.discordapp.net/attachments/764502305009303622/1133405091114782771/Figura-17-Interaccion-entre-las-aplicaciones-de-un-sistema-basado-en-microkernel-vs.png)

 3. **Kernel híbrido:** La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.
![Kernel Hibrido](https://media.discordapp.net/attachments/764502305009303622/1133405816913940512/Figura-14-Estructura-de-un-sistema-basado-en-kernel-hibrido-El-desarrollo-de-los.png?width=410&height=401)

# 2. User vs Kernel Mode

**Modo de usuario:** cuando se inicia un programa en un sistema operativo, digamos Windows, se inicia el programa en modo de usuario. Y cuando un programa en modo usuario solicita ejecutarse, Windows crea un proceso y un espacio de direcciones virtuales (espacio de direcciones para ese proceso). Los programas de modo de usuario tienen menos privilegios que las aplicaciones de modo de usuario y no se les permite acceder a los recursos del sistema directamente. Por ejemplo, si una aplicación en modo de usuario desea acceder a los recursos del sistema, primero deberá pasar por el kernel del sistema operativo mediante llamadas al sistema.  

**Modo Kernel:** El kernel es el programa central en el que se basan todos los demás componentes del sistema operativo, se utiliza para acceder a los componentes de hardware y programar qué procesos deben ejecutarse en un sistema informático y cuándo, y también administra la interacción entre el software y el hardware de la aplicación. Por lo tanto, es el programa más privilegiado. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware, por ejemplo, una cámara web, primero tiene que pasar por el núcleo mediante una llamada al sistema y, para llevar a cabo estas solicitudes, la CPU cambia del modo de usuario al modo de núcleo en el momento de la ejecución.

Diferencia entre el modo Kernel y el modo Usuario:

| Criterios | Modo Kernel | Modo Usuario |
|:-------------: |:---------------:| :-------------:|
| **Acceso a recursos** | En modo kernel, el programa tiene acceso directo y sin restricciones a los recursos del sistema.   | En modo usuario, el programa de aplicación no tiene acceso directo a los recursos del sistema. Para acceder a los recursos, se debe realizar una llamada al sistema.  |
| **Interrupciones**    | En el modo Kernel, todo el sistema operativo puede dejar de funcionar si se produce una interrupción  | En el modo de usuario, un solo proceso falla si ocurre una interrupción. |
| **Modos**    | El modo kernel también se conoce como modo maestro, modo privilegiado o modo de sistema.   | El modo de usuario también se conoce como modo sin privilegios, modo restringido o modo esclavo.   |
| **Espacio de direcciones virtuales**| En modo kernel, todos los procesos comparten un único espacio de direcciones virtuales.   | En el modo de usuario, todos los procesos obtienen un espacio de direcciones virtuales separado.   |
| **Nivel de privilegio**|En el modo kernel, las aplicaciones tienen más privilegios que en el modo usuario.   | Mientras está en modo usuario, las aplicaciones tienen menos privilegios.   |
| **Referencias de memoria**| Es capaz de hacer referencia a ambas áreas de memoria.   | Solo puede hacer referencias a la memoria asignada para el modo de usuario.   |
| **Acceso**| Solo la funcionalidad esencial puede operar en este modo.| Los programas de usuario pueden acceder y ejecutarse en este modo para un sistema dado.   |
| **Funcionalidad**| El modo kernel puede hacer referencia a cualquier bloque de memoria en el sistema y también puede dirigir la CPU para la ejecución de una instrucción, lo que lo convierte en un modo muy potente y significativo.| El modo usuario es un modo de visualización estándar y típico, lo que implica que la información no puede ejecutarse por sí sola ni hacer referencia a ningún bloque de memoria; necesita una interfaz de protocolo de aplicación (API) para lograr estas cosas.|

**E-GRAFIA**
[User Mode vs Kernel Mode](https://www.geeksforgeeks.org/difference-between-user-mode-and-kernel-mode/)

[Tipos de Kernel](https://www.ionos.es/digitalguide/servidores/know-how/que-es-el-kernel/)
