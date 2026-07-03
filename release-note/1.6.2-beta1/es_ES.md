## [1.6.2-beta1]

### Security
- Se solucionó urgentemente un problema de seguridad de alto riesgo en el módulo de administración de cuentas, mejorando aún más la seguridad de las operaciones del administrador.
- Se solucionó urgentemente un problema de seguridad de alto riesgo en el servicio de archivos, mejorando la seguridad del acceso a los archivos y las operaciones.

### New
- Modo oscuro agregado para la aplicación Archivos
- Se agregó soporte de integración de Alibaba Cloud Drive
- Kernel de Linux actualizado a 6.18.9
- Se agregó compatibilidad con controladores para NVIDIA 470/580/Open Kernel Module, Intel Xe/Battlemage, Realtek RTW88/RTL8127, dispositivos inalámbricos Intel/MediaTek/AIC8800 y dispositivos de audio Cirrus Logic, y se agregó un mecanismo de adaptación y detección automática de controladores NVIDIA que coincide automáticamente con la versión adecuada del controlador según el hardware.

### Fixed
- Se corrigió la caducidad de la clave de OneDrive que causaba problemas de conexión, se restauró la disponibilidad de integración básica y se optimizó el mecanismo de actualización de claves.
- Se solucionó un problema por el cual la aplicación Collabora Server bloqueaba las copias de seguridad, lo que garantizaba que las tareas de copia de seguridad se pudieran ejecutar correctamente.
- Se solucionó un problema por el cual se podía asignar a varios dispositivos de almacenamiento USB el mismo punto de montaje al inicio.
- Se solucionó un problema por el cual se generaban sufijos `-device-name` heredados cuando los puntos de montaje USB entraban en conflicto
- Se solucionó un problema por el cual el almacenamiento creado a partir de un disco de una sola partición no usaba el nombre especificado por el usuario como punto de montaje.
- Se corrigió la degradación de RAID después del reinicio cuando se creaba una matriz RAID a partir de discos con el mismo número de serie.
- Se corrigieron falsos positivos en las comprobaciones de inicio de RAID causados ​​por formatos de nombre de dispositivo de tiempo de ejecución inconsistentes.

### Optimized
- Flujos de trabajo optimizados de operación de archivos de alta frecuencia, como importación, migración, cifrado, copia y corte.
- Visualización optimizada del estado de carga de la unidad en la nube, lo que hace que sea más claro para los usuarios comprender el progreso actual, el estado de finalización y los motivos del error.

### Tips
- Si encuentra algún problema de software, no dude en unirse a nuestra comunidad de Discord para conectarse y obtener soporte de más de 43,000 miembros de Zima.
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
