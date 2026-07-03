## [1.6.2-beta1]

### Security
- Har hurtig rettet et højrisikosikkerhedsproblem i kontostyringsmodulet, hvilket yderligere forbedrede sikkerheden ved administratoroperationer
- Har hurtig rettet et højrisikosikkerhedsproblem i filtjenesten, hvilket forbedrer sikkerheden ved filadgang og -operationer

### New
- Tilføjet mørk tilstand til appen Filer
- Tilføjet Alibaba Cloud Drive integrationssupport
- Opdateret Linux-kerne til 6.18.9
- Tilføjet driverunderstøttelse til NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 trådløse enheder og Cirrus Logic lydenheder, og tilføjet en NVIDIA driver auto-detekterings- og tilpasningsmekanisme, der automatisk matcher den passende driverversion baseret på den relevante driverversion

### Fixed
- Rettede OneDrive-nøgleudløb, der forårsagede forbindelsesproblemer, gendannet grundlæggende integrationstilgængelighed og optimeret nøgleopdateringsmekanismen
- Rettede et problem, hvor Collabora Server-appen blokerede sikkerhedskopier, hvilket sikrer, at sikkerhedskopieringsopgaver kan køre korrekt
- Rettede et problem, hvor flere USB-lagerenheder kunne tildeles det samme monteringspunkt ved opstart
- Rettede et problem, hvor ældre "-enhedsnavn"-suffikser blev genereret, når USB-monteringspunkter var i konflikt
- Rettede et problem, hvor lager oprettet fra en enkeltpartitionsdisk ikke brugte det brugerspecificerede navn som monteringspunkt
- Rettede RAID-forringelse efter genstart, da et RAID-array blev oprettet fra diske med samme serienummer
- Rettede falske positiver i RAID-starttjek forårsaget af inkonsistente runtime-enhedsnavneformater

### Optimized
- Optimerede højfrekvente filoperationsarbejdsgange såsom import, migrering, kryptering, kopiering og klipning
- Optimeret cloud-drev-uploadstatusvisning, der gør det lettere for brugerne at forstå de aktuelle fremskridt, færdiggørelsesstatus og årsager til fejl

### Tips
- Hvis du støder på softwareproblemer, er du velkommen til at deltage i vores Discord-fællesskab for at få kontakt med og få support fra over 43.000 Zima-medlemmer!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
