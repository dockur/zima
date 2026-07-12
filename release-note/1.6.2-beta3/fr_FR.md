## [1.6.2-beta3]

### Fixed
- Correction d'un problème où le répertoire multimédia n'était pas accessible
- Correction d'un problème où la migration d'applications ne pouvait pas s'exécuter correctement
- Correction d'un problème où casaos-every-boot signalait une erreur au démarrage
- Correction d'un problème où Zima n'était pas accessible via le nom de domaine local

### Security
- Correction d'un problème de sécurité à haut risque dans le service de messagerie, améliorant ainsi la sécurité des communications du système

## [1.6.2-beta2]

### Fixed
- Correction d'un problème où certains répertoires système étaient incorrectement identifiés comme chemins non valides

### Optimized
- Optimisation du processus de configuration d'initialisation du lecteur cloud dans des scénarios spécifiques, corrigeant les problèmes de chargement de fichiers causés par une initialisation lente

## [1.6.2-beta1]

### Security
- Correction d'urgence d'un problème de sécurité à haut risque dans le module de gestion de compte, améliorant encore la sécurité des opérations de l'administrateur
- Correction d'urgence d'un problème de sécurité à haut risque dans le service de fichiers, améliorant ainsi la sécurité de l'accès aux fichiers et des opérations.

### New
- Ajout du mode sombre pour l'application Fichiers
- Ajout de la prise en charge de l'intégration d'Alibaba Cloud Drive
- Noyau Linux mis à jour vers 6.18.9
- Ajout de la prise en charge des pilotes pour les périphériques sans fil NVIDIA 470/580/Open Kernel Module, Intel Xe/Battlemage, Realtek RTW88/RTL8127, Intel/MediaTek/AIC8800 et les périphériques audio Cirrus Logic, et ajout d'un mécanisme de détection et d'adaptation automatique du pilote NVIDIA qui correspond automatiquement à la version du pilote appropriée en fonction du matériel.

### Fixed
- Correction de l'expiration de la clé OneDrive provoquant des problèmes de connexion, restauration de la disponibilité de l'intégration de base et optimisation du mécanisme de mise à jour des clés
- Correction d'un problème où l'application Collabora Server bloquait les sauvegardes, garantissant ainsi que les tâches de sauvegarde peuvent s'exécuter correctement.
- Correction d'un problème où plusieurs périphériques de stockage USB pouvaient se voir attribuer le même point de montage au démarrage
- Correction d'un problème où les anciens suffixes « -device-name » étaient générés lorsque les points de montage USB étaient en conflit
- Correction d'un problème où le stockage créé à partir d'un disque à partition unique n'utilisait pas le nom spécifié par l'utilisateur comme point de montage.
- Correction de la dégradation du RAID après le redémarrage lorsqu'une matrice RAID était créée à partir de disques avec le même numéro de série
- Correction de faux positifs dans les contrôles de démarrage RAID causés par des formats de nom de périphérique d'exécution incohérents

### Optimized
- Flux de travail optimisés pour les opérations sur fichiers à haute fréquence, tels que l'importation, la migration, le cryptage, la copie et la découpe.
- Affichage optimisé de l'état de téléchargement du lecteur cloud, permettant aux utilisateurs de comprendre plus clairement la progression actuelle, l'état d'achèvement et les raisons de l'échec.

### Tips
- Si vous rencontrez des problèmes logiciels, n'hésitez pas à rejoindre notre communauté Discord pour vous connecter et obtenir l'assistance de plus de 43 000 membres Zima !
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
