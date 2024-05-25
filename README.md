# optimizaki
script en batch diseñado para optimizar el rendimiento de Windows 10 en sistemas con recursos limitados. Este script deshabilita servicios innecesarios y configura otros para que se ejecuten manualmente, mejorando así el rendimiento general del sistema.

Optimizaki es una herramienta indispensable para aquellos que buscan maximizar el rendimiento de su PC con Windows 10, especialmente en sistemas con recursos limitados. Este script batch es eficaz porque:

Mejora el Rendimiento: Al deshabilitar servicios innecesarios, libera recursos del sistema, lo que resulta en una mejora notable en la velocidad y capacidad de respuesta del equipo.
Aumenta la Eficiencia: Configura servicios clave para que se inicien manualmente en lugar de automáticamente, lo que reduce la carga durante el arranque y permite que tu PC funcione de manera más eficiente.
Fácil de Usar: Con una ejecución simple como administrador, Optimizaki realiza automáticamente todas las optimizaciones necesarias, eliminando la necesidad de configuraciones manuales complicadas.
Personalizable: La lista de servicios que se deshabilitan o configuran es completamente ajustable, permitiéndote adaptar el script a tus necesidades específicas.
Beneficioso para Hardware Modesto: Ideal para PCs con bajos recursos (por ejemplo, 2 GB de RAM), asegurando que obtengan el mejor rendimiento posible sin la necesidad de actualizaciones de hardware costosas.
Optimizaki es, por tanto, una solución simple, eficaz y necesaria para mantener tu PC con Windows 10 funcionando de manera óptima y sin problemas.

## Características

- Deshabilita servicios innecesarios de Windows 10.
- Configura ciertos servicios para que se ejecuten manualmente en lugar de automáticamente.
- Mejora el rendimiento general del sistema en PCs con hardware modesto.

## Servicios Deshabilitados

El script deshabilita los siguientes servicios:

- DiagTrack (Servicio de seguimiento de diagnóstico)
- dmwappushservice (Servicio de transmisión de mensajes push de dispositivo)
- Fax (Servicio de fax)
- MapsBroker (Servicio de mapas descargables)
- RetailDemo (Servicio de demostración al por menor)
- PrintSpooler (Servicio de cola de impresión)
- WMPNetworkSvc (Servicio de uso compartido de red del Reproductor de Windows Media)
- XblGameSave (Servicio de guardado de juegos de Xbox Live)
- XboxNetApiSvc (Servicio de administración de Xbox Live)
- WindowsUpdate (Servicio de actualización de Windows)
- WSearch (Servicio de búsqueda de Windows)
- RemoteRegistry (Servicio de registro remoto)
- SysMain (Superfetch)
- SSDPSRV (Servicio de detección de SSDP)
- WerSvc (Servicio de informes de errores de Windows)
- TrkWks (Servicio de cliente de seguimiento de vínculos distribuidos)
- iphlpsvc (Servicio de compatibilidad con IPv6)
- seclogon (Servicio de inicio de sesión secundario)

## Servicios Configurados como Manual

El script configura los siguientes servicios para que se ejecuten manualmente:

- bits (Servicio de transferencia inteligente en segundo plano)
- wuauserv (Servicio de actualización de Windows)
- CryptSvc (Servicio de cifrado)
- DcomLaunch (Servicio de lanzamiento DCOM)
- EventLog (Servicio de registro de eventos)
- AudioEndpointBuilder (Servicio de creación de puntos de conexión de audio de Windows)
- hidserv (Servicio de acceso de interfaz humana)

## Requisitos

- Windows 10
- Permisos de administrador

## Uso

1. **Descargar el script:**
   - Descarga el archivo `optimizaki.bat` desde este repositorio.

2. **Ejecutar el script como administrador:**
   - Haz clic derecho en el archivo `optimizaki.bat` y selecciona "Ejecutar como administrador".

3. **Reiniciar el sistema:**
   - Después de ejecutar el script, reinicia tu computadora para aplicar los cambios.

## Advertencias

- **Precaución:** Deshabilitar servicios puede afectar la funcionalidad del sistema. Asegúrate de que los servicios que deshabilitas no sean críticos para el uso que le das a tu PC.
- **Personalización:** La lista de servicios deshabilitados y configurados como manual en este script es un ejemplo. Revisa y ajusta la lista según tus necesidades y el uso específico de tu sistema.
- **Revisión:** Consulta la documentación de Microsoft o fuentes confiables para entender qué hace cada servicio antes de deshabilitarlo o cambiar su configuración.

## Contribuciones

Las contribuciones son bienvenidas. Si tienes sugerencias o mejoras, por favor abre un issue o envía un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.
