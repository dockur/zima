## [1.6.2-beta2]

### Fixed
- S'ha solucionat un problema en què determinats directoris del sistema s'identificaven incorrectament com a camins no vàlids

### Optimized
- S'ha optimitzat el procés de configuració d'inicialització de la unitat de núvol en escenaris específics, solucionant els problemes de càrrega de fitxers causats per una inicialització lenta

## [1.6.2-beta1]

### Security
- S'ha solucionat de manera urgent un problema de seguretat d'alt risc al mòdul de gestió de comptes, millorant encara més la seguretat de les operacions de l'administrador.
- S'ha solucionat urgentment un problema de seguretat d'alt risc al servei de fitxers, millorant la seguretat de l'accés i les operacions dels fitxers.

### New
- S'ha afegit el mode fosc per a l'aplicació Fitxers
- S'ha afegit el suport d'integració d'Alibaba Cloud Drive
- S'ha actualitzat el nucli de Linux a 6.18.9
- S'ha afegit el suport del controlador per al mòdul NVIDIA 470 / 580 / Open Kernel, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, dispositius sense fil Intel / MediaTek / AIC8800 i dispositius d'àudio Cirrus Logic, i s'ha afegit un mecanisme d'adaptació i detecció automàtica del controlador NVIDIA que coincideix automàticament amb la versió del controlador de maquinari adequada

### Fixed
- S'ha corregit l'expiració de la clau de OneDrive que causava problemes de connexió, s'ha restaurat la disponibilitat bàsica d'integració i s'ha optimitzat el mecanisme d'actualització de claus
- S'ha solucionat un problema en què l'aplicació Collabora Server bloquejava les còpies de seguretat, garantint que les tasques de còpia de seguretat es poguessin executar correctament
- S'ha solucionat un problema en què es podia assignar el mateix punt de muntatge a diversos dispositius d'emmagatzematge USB a l'inici
- S'ha solucionat un problema en què es generaven sufixos heretats "-device-name" quan els punts de muntatge USB entraven en conflicte
- S'ha solucionat un problema en què l'emmagatzematge creat des d'un disc d'una sola partició no utilitzava el nom especificat per l'usuari com a punt de muntatge
- S'ha corregit la degradació del RAID després del reinici quan es creava una matriu RAID a partir de discs amb el mateix número de sèrie
- S'han corregit els falsos positius a les comprovacions d'inici de RAID causades per formats de nom de dispositiu en temps d'execució inconsistents

### Optimized
- Fluxos de treball d'operacions de fitxers d'alta freqüència optimitzats, com ara importació, migració, xifratge, còpia i tall
- Visualització optimitzada de l'estat de càrrega de la unitat al núvol, de manera que els usuaris entenguin més clar el progrés actual, l'estat de finalització i els motius dels errors.

### Tips
- Si trobeu algun problema amb el programari, no dubteu a unir-vos a la nostra comunitat de Discord per connectar-vos i obtenir el suport de més de 43.000 membres de Zima.
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
