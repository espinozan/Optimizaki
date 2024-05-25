@echo off
echo ===========================================================================
echo Deshabilitando servicios innecesarios en Windows 10
echo ===========================================================================
echo.

REM Comprobar si se está ejecutando como administrador
openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Por favor, ejecute este script como administrador.
    pause
    exit /b
)

REM Lista de servicios a deshabilitar
set services=(
    "DiagTrack"              REM Servicio de seguimiento de diagnóstico
    "dmwappushservice"       REM Servicio de transmisión de mensajes push de dispositivo
    "Fax"                    REM Servicio de fax
    "MapsBroker"             REM Servicio de mapas descargables
    "RetailDemo"             REM Servicio de demostración al por menor
    "PrintSpooler"           REM Servicio de cola de impresión (deshabilitar si no usas impresoras)
    "WMPNetworkSvc"          REM Servicio de uso compartido de red del Reproductor de Windows Media
    "XblGameSave"            REM Servicio de guardado de juegos de Xbox Live
    "XboxNetApiSvc"          REM Servicio de administración de Xbox Live
    "WindowsUpdate"          REM Servicio de actualización de Windows
    "WSearch"                REM Servicio de búsqueda de Windows
    "RemoteRegistry"         REM Servicio de registro remoto
    "SysMain"                REM Superfetch (anteriormente conocido como Prefetch)
    "SSDPSRV"                REM Servicio de detección de SSDP (Protocolo simple de descubrimiento de servicios)
    "WerSvc"                 REM Servicio de informes de errores de Windows
    "TrkWks"                 REM Servicio de cliente de seguimiento de vínculos distribuidos
    "iphlpsvc"               REM Servicio de compatibilidad con IPv6 (IPv6 Helper Service)
    "seclogon"               REM Servicio de inicio de sesión secundario
)

REM Deshabilitar servicios
for %%s in %services% do (
    echo Deshabilitando %%s...
    sc config %%s start= disabled
    sc stop %%s
)

echo.
echo ===========================================================================
echo Configurando algunos servicios para que se ejecuten manualmente
echo ===========================================================================

REM Lista de servicios a configurar como manual
set manual_services=(
    "bits"                   REM Servicio de transferencia inteligente en segundo plano
    "wuauserv"               REM Servicio de actualización de Windows
    "CryptSvc"               REM Servicio de cifrado
    "DcomLaunch"             REM Servicio de lanzamiento DCOM
    "EventLog"               REM Servicio de registro de eventos
    "AudioEndpointBuilder"   REM Servicio de creación de puntos de conexión de audio de Windows
    "hidserv"                REM Servicio de acceso de interfaz humana
)

REM Configurar servicios como manual
for %%s in %manual_services% do (
    echo Configurando %%s como manual...
    sc config %%s start= demand
)

echo.
echo ===========================================================================
echo Todos los servicios especificados han sido deshabilitados o configurados como manual.
echo Por favor, reinicie su computadora para aplicar los cambios.
echo ===========================================================================
pause
exit /b
