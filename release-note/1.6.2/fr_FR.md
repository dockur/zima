## [1.6.2]

### Security
- Correction urgente d'un problème de sécurité à haut risque dans le module de gestion des comptes, renforçant encore la sécurité des opérations administrateur
- Correction urgente d'un problème de sécurité à haut risque dans le service de fichiers, améliorant la sécurité de l'accès et des opérations sur les fichiers
- Correction d'un problème de sécurité à haut risque dans le service de messagerie, améliorant la sécurité des communications du système
- SSH désactive désormais par défaut la connexion distante de l'utilisateur root, réduisant le risque d'exposition des comptes à privilèges élevés
- SSH a ajouté plusieurs politiques de sécurité afin d'empêcher les attaques par force brute
- Le service NFS est désormais désactivé par défaut, ce qui réduit le risque d'accès non autorisé

### New
- Ajout du mode sombre pour l'application Files
- Ajout de la prise en charge de l'intégration avec Alibaba Cloud Drive
- Mise à jour du noyau Linux vers la version 6.18.9
- Ajout de la prise en charge des pilotes pour NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, les périphériques sans fil Intel / MediaTek / AIC8800 et les périphériques audio Cirrus Logic, ainsi que d'un mécanisme de détection et d'adaptation automatiques des pilotes NVIDIA qui associe automatiquement la version appropriée du pilote en fonction du matériel

### Fixed
- Correction du problème de connexion causé par l'expiration de la clé OneDrive, restauration de la disponibilité de base de l'intégration et optimisation du mécanisme de mise à jour de la clé
- Correction d'un problème où l'application Collabora Server bloquait les sauvegardes, garantissant que les tâches de sauvegarde puissent s'exécuter correctement
- Correction d'un problème où plusieurs périphériques de stockage USB pouvaient se voir attribuer le même point de montage au démarrage
- Correction d'un problème où des suffixes hérités `-device-name` étaient générés en cas de conflit entre points de montage USB
- Correction d'une dégradation RAID après redémarrage lorsqu'une baie RAID était créée à partir de disques ayant le même numéro de série

### Optimized
- Optimisation des flux d'opérations de fichiers à haute fréquence tels que l'importation, la migration, le chiffrement, la copie et la coupe
- Optimisation de l'affichage de l'état de téléversement du disque cloud, afin que les utilisateurs comprennent plus clairement la progression actuelle, l'état d'achèvement et les raisons des échecs

### Tips
- Si vous rencontrez le moindre problème logiciel, n'hésitez pas à rejoindre notre communauté Discord pour échanger avec plus de 43 000 membres Zima et obtenir de l'aide !
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
