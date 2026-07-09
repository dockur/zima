## [1.6.2]

### Security
- S'ha corregit d'urgència un problema de seguretat d'alt risc al mòdul de gestió de comptes, millorant encara més la seguretat de les operacions d'administració
- S'ha corregit d'urgència un problema de seguretat d'alt risc al servei de fitxers, millorant la seguretat de l'accés i les operacions amb fitxers
- S'ha corregit un problema de seguretat d'alt risc al servei de missatgeria, millorant la seguretat de les comunicacions del sistema
- SSH ara desactiva per defecte l'inici de sessió remot per a l'usuari root, reduint el risc d'exposició dels comptes amb privilegis elevats
- SSH ha afegit diverses polítiques de seguretat per prevenir atacs de força bruta
- El servei NFS ara està desactivat per defecte, reduint el risc d'accés no autoritzat

### New
- S'ha afegit el mode fosc a l'aplicació Files
- S'ha afegit compatibilitat amb la integració d'Alibaba Cloud Drive
- S'ha actualitzat el nucli Linux a la versió 6.18.9
- S'ha afegit compatibilitat de controladors per a NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, dispositius sense fil Intel / MediaTek / AIC8800 i dispositius d'àudio Cirrus Logic, i també s'ha afegit un mecanisme d'autodetecció i adaptació del controlador NVIDIA que selecciona automàticament la versió adequada segons el maquinari

### Fixed
- S'ha corregit el problema de connexió causat per l'expiració de la clau de OneDrive, s'ha restaurat la disponibilitat bàsica de la integració i s'ha optimitzat el mecanisme d'actualització de la clau
- S'ha corregit un problema pel qual l'aplicació Collabora Server bloquejava les còpies de seguretat, garantint que les tasques de còpia de seguretat es puguin executar correctament
- S'ha corregit un problema pel qual a l'inici diversos dispositius d'emmagatzematge USB podien rebre el mateix punt de muntatge
- S'ha corregit un problema pel qual es generaven sufixos heretats `-device-name` quan hi havia conflictes entre punts de muntatge USB
- S'ha corregit la degradació del RAID després de reiniciar quan una matriu RAID es creava a partir de discos amb el mateix número de sèrie

### Optimized
- S'han optimitzat els fluxos d'operacions de fitxers d'alta freqüència, com ara importar, migrar, xifrar, copiar i retallar
- S'ha optimitzat la visualització de l'estat de pujada al núvol, fent més clar per als usuaris entendre el progrés actual, l'estat de finalització i els motius dels errors

### Tips
- Si trobes qualsevol problema de programari, no dubtis a unir-te a la nostra comunitat de Discord per connectar amb més de 43.000 membres de Zima i rebre suport!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
