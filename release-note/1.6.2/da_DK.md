## [1.6.2]

### Security
- En sikkerhedsfejl med høj risiko i kontoadministrationsmodulet er blevet rettet akut, hvilket yderligere forbedrer sikkerheden ved administratorhandlinger
- En sikkerhedsfejl med høj risiko i filtjenesten er blevet rettet akut, hvilket forbedrer sikkerheden ved filadgang og filhandlinger
- En sikkerhedsfejl med høj risiko i meddelelsestjenesten er blevet rettet, hvilket forbedrer sikkerheden i systemkommunikationen
- SSH deaktiverer nu fjernlogin for root-brugeren som standard, hvilket reducerer eksponeringsrisikoen for konti med høje rettigheder
- SSH har tilføjet flere sikkerhedspolitikker for at forhindre brute-force-angreb
- NFS-tjenesten er nu deaktiveret som standard, hvilket reducerer risikoen for uautoriseret adgang

### New
- Tilføjet mørk tilstand til appen Files
- Tilføjet understøttelse af integration med Alibaba Cloud Drive
- Linux-kernen er opdateret til 6.18.9
- Tilføjet driverunderstøttelse til NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 trådløse enheder og Cirrus Logic-lydenheder, samt en mekanisme til automatisk registrering og tilpasning af NVIDIA-drivere, der automatisk matcher den passende driverversion baseret på hardwaren

### Fixed
- Rettet forbindelsesproblemet forårsaget af udløb af OneDrive-nøglen, gendannet grundlæggende integrationsfunktionalitet og optimeret mekanismen til nøgleopdatering
- Rettet et problem, hvor appen Collabora Server blokerede sikkerhedskopieringer, så sikkerhedskopieringsopgaver kan køre korrekt
- Rettet et problem, hvor flere USB-lagerenheder ved opstart kunne blive tildelt det samme monteringspunkt
- Rettet et problem, hvor ældre suffikser af typen `-device-name` blev genereret ved konflikter mellem USB-monteringspunkter
- Rettet RAID-degradering efter genstart, når et RAID-array blev oprettet fra diske med samme serienummer

### Optimized
- Optimeret arbejdsgange for hyppige filhandlinger som import, migrering, kryptering, kopiering og klip
- Optimeret visning af uploadstatus for cloud-drev, så det er lettere for brugere at forstå den aktuelle fremdrift, fuldførelsesstatus og årsager til fejl

### Tips
- Hvis du støder på softwareproblemer, er du velkommen til at deltage i vores Discord-fællesskab for at komme i kontakt med og få support fra over 43.000 Zima-medlemmer!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
