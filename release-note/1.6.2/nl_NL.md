## [1.6.2]

### Security
- Een beveiligingsprobleem met hoog risico in de accountbeheermodule is met spoed verholpen, waardoor de veiligheid van beheerdershandelingen verder is verbeterd
- Een beveiligingsprobleem met hoog risico in de bestandservice is met spoed verholpen, waardoor de veiligheid van bestandstoegang en bestandsbewerkingen is verbeterd
- Een beveiligingsprobleem met hoog risico in de berichtendienst is verholpen, waardoor de veiligheid van systeemcommunicatie is verbeterd
- SSH schakelt externe aanmelding voor de root-gebruiker nu standaard uit, waardoor het blootstellingsrisico van accounts met hoge bevoegdheden afneemt
- SSH heeft verschillende beveiligingsbeleidsregels toegevoegd om brute-force-aanvallen te voorkomen
- De NFS-service is nu standaard uitgeschakeld, waardoor het risico op ongeautoriseerde toegang afneemt

### New
- Donkere modus toegevoegd aan de Files-app
- Ondersteuning toegevoegd voor integratie met Alibaba Cloud Drive
- Linux-kernel bijgewerkt naar 6.18.9
- Ondersteuning toegevoegd voor stuurprogramma's van NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 draadloze apparaten en Cirrus Logic-audioapparaten, plus een mechanisme voor automatische detectie en aanpassing van NVIDIA-stuurprogramma's dat automatisch de juiste stuurprogrammaversie kiest op basis van de hardware

### Fixed
- Verbindingsproblemen door verlopen OneDrive-sleutels opgelost, de basisbeschikbaarheid van de integratie hersteld en het mechanisme voor sleutelupdates geoptimaliseerd
- Een probleem opgelost waarbij de Collabora Server-app back-ups blokkeerde, zodat back-uptaken weer correct kunnen worden uitgevoerd
- Een probleem opgelost waarbij meerdere USB-opslagapparaten bij het opstarten hetzelfde koppelpunt konden krijgen
- Een probleem opgelost waarbij verouderde suffixen `-device-name` werden gegenereerd wanneer USB-koppelpunten conflicteerden
- RAID-degradatie na herstart opgelost wanneer een RAID-array werd gemaakt van schijven met hetzelfde serienummer

### Optimized
- Veelgebruikte workflows voor bestandsbewerkingen zoals importeren, migreren, versleutelen, kopiëren en knippen geoptimaliseerd
- De weergave van de uploadstatus van cloudopslag geoptimaliseerd, zodat gebruikers de huidige voortgang, voltooiingsstatus en foutredenen duidelijker begrijpen

### Tips
- Als je softwareproblemen tegenkomt, sluit je dan gerust aan bij onze Discord-community om contact te leggen met meer dan 43.000 Zima-leden en ondersteuning te krijgen!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
