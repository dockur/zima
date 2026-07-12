## [1.6.2]

### Security
- Ett säkerhetsproblem med hög risk i kontohanteringsmodulen åtgärdades omedelbart, vilket ytterligare förbättrar säkerheten för administratörsåtgärder
- Ett säkerhetsproblem med hög risk i filtjänsten åtgärdades omedelbart, vilket förbättrar säkerheten för filåtkomst och filoperationer
- Ett säkerhetsproblem med hög risk i meddelandetjänsten åtgärdades, vilket förbättrar systemsäkerheten för kommunikation
- SSH inaktiverar nu fjärrinloggning för root-användaren som standard, vilket minskar exponeringsrisken för konton med höga behörigheter
- SSH har lagt till flera säkerhetspolicyer för att förhindra brute-force-attacker
- NFS-tjänsten är nu inaktiverad som standard, vilket minskar risken för obehörig åtkomst

### New
- Mörkt läge har lagts till i Files-appen
- Stöd för integration med Alibaba Cloud Drive har lagts till
- Linux-kärnan har uppdaterats till 6.18.9
- Drivrutinsstöd har lagts till för NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 trådlösa enheter och Cirrus Logic-ljudenheter, och en mekanism för automatisk identifiering och anpassning av NVIDIA-drivrutiner har lagts till som automatiskt matchar rätt drivrutinsversion baserat på hårdvaran

### Fixed
- Anslutningsproblem orsakat av att OneDrive-nyckeln löpte ut har åtgärdats, grundläggande integrationsåtkomst har återställts och mekanismen för nyckeluppdatering har optimerats
- Ett problem där Collabora Server-appen blockerade säkerhetskopior har åtgärdats, vilket säkerställer att säkerhetskopieringsuppgifter kan köras korrekt
- Ett problem där flera USB-lagringsenheter kunde tilldelas samma monteringspunkt vid start har åtgärdats
- Ett problem där äldre suffix av typen `-device-name` genererades när USB-monteringspunkter kom i konflikt har åtgärdats
- RAID-degradering efter omstart har åtgärdats när en RAID-array skapades från diskar med samma serienummer

### Optimized
- Högfrekventa arbetsflöden för filoperationer som import, migrering, kryptering, kopiering och klippning har optimerats
- Visningen av uppladdningsstatus för molndiskar har optimerats så att användare tydligare kan förstå aktuell framdrift, slutförandestatus och orsaker till fel

### Tips
- Om du stöter på några programvaruproblem är du varmt välkommen att gå med i vår Discord-community för att få kontakt med och stöd från över 43 000 Zima-medlemmar!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
