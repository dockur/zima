## [1.6.2-beta3]

### Fixed
- Fixade ett problem där mediekatalogen inte kunde nås
- Fixade ett problem där appmigrering inte kunde köras korrekt
- Fixade ett problem där casaos-every-boot rapporterade ett fel vid start
- Fixade ett problem där Zima inte kunde nås via det lokala domännamnet

### Security
- Fixade ett högrisksäkerhetsproblem i meddelandetjänsten, vilket förbättrade systemkommunikationssäkerheten

## [1.6.2-beta2]

### Fixed
- Fixade ett problem där vissa systemkataloger felaktigt identifierades som ogiltiga sökvägar

### Optimized
- Optimerade konfigurationsprocessen för molndiskinitiering i specifika scenarier, åtgärdade problem med filladdning som orsakats av långsam initiering

## [1.6.2-beta1]

### Security
- Brådskande fixade ett högrisksäkerhetsproblem i kontohanteringsmodulen, vilket ytterligare förbättrade säkerheten för administratörsoperationer
- Brådskande fixade ett högrisksäkerhetsproblem i filtjänsten, vilket förbättrade säkerheten för filåtkomst och operationer

### New
- Lade till mörkt läge för appen Filer
- Lade till stöd för integration av Alibaba Cloud Drive
- Uppdaterade Linux-kärnan till 6.18.9
- Lagt till drivrutinsstöd för NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 trådlösa enheter och Cirrus Logic-ljudenheter, och lagt till en NVIDIA-drivrutin för automatisk upptäckt och anpassningsmekanism som automatiskt matchar den lämpliga drivrutinsversionen baserat på hårdvaruversionen

### Fixed
- Fixade OneDrive-nyckelns utgång som orsakade anslutningsproblem, återställd grundläggande integrationstillgänglighet och optimerade nyckeluppdateringsmekanismen
- Fixat ett problem där Collabora Server-appen blockerade säkerhetskopior, vilket säkerställer att säkerhetskopieringsuppgifter kan köras korrekt
- Fixade ett problem där flera USB-lagringsenheter kunde tilldelas samma monteringspunkt vid start
- Fixade ett problem där äldre "-enhetsnamn"-suffix genererades när USB-monteringspunkter kom i konflikt
- Fixade ett problem där lagring skapad från en enpartitionsdisk inte använde det användarspecificerade namnet som monteringspunkt
- Fixade RAID-försämring efter omstart när en RAID-array skapades från diskar med samma serienummer
- Fixade falska positiva resultat i RAID-startkontroller orsakade av inkonsekventa enhetsnamnsformat för körning

### Optimized
- Optimerade högfrekventa filhanteringsarbetsflöden som import, migrering, kryptering, kopiering och klippning
- Optimerad visning av uppladdningsstatus för molndiskar, vilket gör det tydligare för användare att förstå aktuella framsteg, slutförandestatus och orsaker till fel

### Tips
- Om du stöter på några programvaruproblem, gå gärna med i vår Discord-gemenskap för att få kontakt med och få support från över 43 000 Zima-medlemmar!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
