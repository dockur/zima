## [1.6.2]

### Security
- Et sikkerhetsproblem med høy risiko i kontoadministrasjonsmodulen ble rettet umiddelbart, noe som ytterligere forbedrer sikkerheten ved administratoroperasjoner
- Et sikkerhetsproblem med høy risiko i filtjenesten ble rettet umiddelbart, noe som forbedrer sikkerheten ved filtilgang og filoperasjoner
- Et sikkerhetsproblem med høy risiko i meldingtjenesten ble rettet, noe som forbedrer systemsikkerheten for kommunikasjon
- SSH deaktiverer nå ekstern innlogging for root-brukeren som standard, noe som reduserer eksponeringsrisikoen for kontoer med høye privilegier
- SSH har lagt til flere sikkerhetspolicyer for å forhindre brute-force-angrep
- NFS-tjenesten er nå deaktivert som standard, noe som reduserer risikoen for uautorisert tilgang

### New
- La til mørk modus for Files-appen
- La til støtte for integrasjon med Alibaba Cloud Drive
- Oppdaterte Linux-kjernen til 6.18.9
- La til driverstøtte for NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 trådløse enheter og Cirrus Logic-lydenheter, og la til en mekanisme for automatisk gjenkjenning og tilpasning av NVIDIA-drivere som automatisk matcher riktig driverversjon basert på maskinvaren

### Fixed
- Rettet tilkoblingsproblemer forårsaket av utløpt OneDrive-nøkkel, gjenopprettet grunnleggende integrasjonstilgjengelighet og optimaliserte mekanismen for nøkkeloppdatering
- Rettet et problem der Collabora Server-appen blokkerte sikkerhetskopier, slik at sikkerhetskopieringsoppgaver kan kjøre som de skal
- Rettet et problem der flere USB-lagringsenheter kunne bli tildelt samme monteringspunkt ved oppstart
- Rettet et problem der eldre suffikser av typen `-device-name` ble generert når USB-monteringspunkter var i konflikt
- Rettet RAID-degradering etter omstart når et RAID-array ble opprettet fra disker med samme serienummer

### Optimized
- Optimaliserte arbeidsflyter for hyppige filoperasjoner som import, migrering, kryptering, kopiering og klipping
- Optimaliserte visningen av opplastingsstatus for skylagring, slik at brukerne lettere kan forstå nåværende fremdrift, fullføringsstatus og årsaker til feil

### Tips
- Hvis du støter på programvareproblemer, er du velkommen til å bli med i Discord-fellesskapet vårt for å komme i kontakt med og få støtte fra over 43 000 Zima-medlemmer!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
