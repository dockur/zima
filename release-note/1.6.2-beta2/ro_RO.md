## [1.6.2-beta2]

### Fixed
- S-a rezolvat o problemă în care anumite directoare de sistem au fost identificate incorect ca căi nevalide

### Optimized
- Optimizarea procesului de configurare a inițializării unității în cloud în scenarii specifice, reparând problemele de încărcare a fișierelor cauzate de inițializarea lentă

## [1.6.2-beta1]

### Security
- S-a remediat urgent o problemă de securitate cu risc ridicat în modulul de gestionare a contului, îmbunătățind și mai mult siguranța operațiunilor administratorului
- S-a remediat urgent o problemă de securitate cu risc ridicat în serviciul de fișiere, îmbunătățind siguranța accesului la fișiere și a operațiunilor

### New
- S-a adăugat modul întunecat pentru aplicația Fișiere
- S-a adăugat suport pentru integrarea Alibaba Cloud Drive
- Nucleul Linux a fost actualizat la 6.18.9
- S-a adăugat suport pentru drivere pentru NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, dispozitive fără fir Intel / MediaTek / AIC8800 și dispozitive audio Cirrus Logic și a adăugat un mecanism de detectare și adaptare automată a driverului NVIDIA care se potrivește automat cu versiunea corespunzătoare a driverului hardware.

### Fixed
- S-a remediat expirarea cheii OneDrive care provoacă probleme de conexiune, a restabilit disponibilitatea de bază a integrării și a optimizat mecanismul de actualizare a cheii
- S-a remediat o problemă în care aplicația Collabora Server bloca copiile de rezervă, asigurând că sarcinile de rezervă pot rula corect
- S-a rezolvat o problemă în care mai multor dispozitive de stocare USB puteau fi atribuite același punct de montare la pornire
- S-a rezolvat o problemă în care sufixele vechi „-device-name” erau generate atunci când punctele de montare USB intrau în conflict
- S-a rezolvat o problemă în care spațiul de stocare creat de pe un disc cu o singură partiție nu folosea numele specificat de utilizator ca punct de montare
- S-a remediat degradarea RAID după repornire când a fost creată o matrice RAID de pe discuri cu același număr de serie
- S-au remediat fals pozitive în verificările de pornire RAID cauzate de formatele inconsecvente ale numelor dispozitivului de rulare

### Optimized
- Fluxuri de lucru optimizate pentru operarea fișierelor de înaltă frecvență, cum ar fi importul, migrarea, criptarea, copierea și tăierea
- Afișare optimizată a stării de încărcare a discului în cloud, făcând mai clar pentru utilizatori să înțeleagă progresul actual, starea de finalizare și motivele eșecului

### Tips
- Dacă întâmpinați probleme legate de software, nu ezitați să vă alăturați comunității noastre Discord pentru a vă conecta și pentru a obține sprijin de la peste 43.000 de membri Zima!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
