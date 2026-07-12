## [1.6.2]

### Security
- Se corrigió urgentemente un problema de seguridad de alto riesgo en el módulo de gestión de cuentas, mejorando aún más la seguridad de las operaciones de los administradores
- Se corrigió urgentemente un problema de seguridad de alto riesgo en el servicio de archivos, mejorando la seguridad del acceso y las operaciones con archivos
- Se corrigió un problema de seguridad de alto riesgo en el servicio de mensajería, mejorando la seguridad de las comunicaciones del sistema
- SSH ahora desactiva por defecto el inicio de sesión remoto del usuario root, reduciendo el riesgo de exposición de las cuentas con altos privilegios
- SSH ha añadido varias políticas de seguridad para prevenir ataques de fuerza bruta
- El servicio NFS ahora está desactivado por defecto, reduciendo el riesgo de acceso no autorizado

### New
- Se añadió modo oscuro para la aplicación Files
- Se añadió compatibilidad con la integración de Alibaba Cloud Drive
- Se actualizó el kernel de Linux a la versión 6.18.9
- Se añadió compatibilidad de controladores para NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, dispositivos inalámbricos Intel / MediaTek / AIC8800 y dispositivos de audio Cirrus Logic, y se añadió un mecanismo de detección y adaptación automática de controladores NVIDIA que empareja automáticamente la versión adecuada según el hardware

### Fixed
- Se corrigió el problema de conexión causado por la expiración de la clave de OneDrive, se restauró la disponibilidad básica de la integración y se optimizó el mecanismo de actualización de la clave
- Se corrigió un problema por el que la aplicación Collabora Server bloqueaba las copias de seguridad, garantizando que las tareas de copia de seguridad puedan ejecutarse correctamente
- Se corrigió un problema por el que, al iniciar, varios dispositivos de almacenamiento USB podían recibir el mismo punto de montaje
- Se corrigió un problema por el que se generaban sufijos heredados `-device-name` cuando había conflictos entre puntos de montaje USB
- Se corrigió la degradación del RAID tras reiniciar cuando una matriz RAID se creaba a partir de discos con el mismo número de serie

### Optimized
- Se optimizaron los flujos de trabajo de operaciones de archivos de alta frecuencia, como importar, migrar, cifrar, copiar y cortar
- Se optimizó la visualización del estado de carga en la unidad en la nube, para que los usuarios comprendan mejor el progreso actual, el estado de finalización y las razones de los fallos

### Tips
- Si te encuentras con cualquier problema de software, no dudes en unirte a nuestra comunidad de Discord para conectar con más de 43.000 miembros de Zima y recibir ayuda.
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
