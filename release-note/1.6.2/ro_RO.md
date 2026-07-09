## [1.6.2]

### Security
- A fost remediată de urgență o problemă de securitate cu risc ridicat în modulul de administrare a conturilor, îmbunătățind și mai mult siguranța operațiunilor de administrator
- A fost remediată de urgență o problemă de securitate cu risc ridicat în serviciul de fișiere, îmbunătățind siguranța accesului și operațiunilor asupra fișierelor
- A fost remediată o problemă de securitate cu risc ridicat în serviciul de mesagerie, îmbunătățind securitatea comunicațiilor sistemului
- SSH dezactivează acum implicit autentificarea de la distanță pentru utilizatorul root, reducând riscul de expunere a conturilor cu privilegii ridicate
- SSH a adăugat mai multe politici de securitate pentru a preveni atacurile de tip brute-force
- Serviciul NFS este acum dezactivat implicit, reducând riscul de acces neautorizat

### New
- A fost adăugat modul întunecat pentru aplicația Files
- A fost adăugat suport pentru integrarea cu Alibaba Cloud Drive
- Nucleul Linux a fost actualizat la versiunea 6.18.9
- A fost adăugat suport de drivere pentru NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, dispozitive wireless Intel / MediaTek / AIC8800 și dispozitive audio Cirrus Logic, precum și un mecanism de detectare și adaptare automată a driverelor NVIDIA care potrivește automat versiunea potrivită de driver în funcție de hardware

### Fixed
- A fost remediată problema de conexiune cauzată de expirarea cheii OneDrive, a fost restabilită disponibilitatea de bază a integrării și a fost optimizat mecanismul de actualizare a cheii
- A fost remediată o problemă în care aplicația Collabora Server bloca backup-urile, asigurând că sarcinile de backup pot rula corect
- A fost remediată o problemă în care mai multor dispozitive de stocare USB li se putea atribui același punct de montare la pornire
- A fost remediată o problemă în care erau generate sufixe vechi `-device-name` atunci când punctele de montare USB intrau în conflict
- A fost remediată degradarea RAID după repornire atunci când un tablou RAID era creat din discuri cu același număr de serie

### Optimized
- Au fost optimizate fluxurile de lucru frecvente pentru operațiuni cu fișiere, cum ar fi importul, migrarea, criptarea, copierea și decuparea
- A fost optimizată afișarea stării încărcării în cloud drive, astfel încât utilizatorii să înțeleagă mai clar progresul curent, starea finalizării și motivele eșecului

### Tips
- Dacă întâmpinați orice problemă software, nu ezitați să vă alăturați comunității noastre Discord pentru a intra în legătură cu peste 43.000 de membri Zima și a primi sprijin!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
