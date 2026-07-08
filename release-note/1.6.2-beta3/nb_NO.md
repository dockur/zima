## [1.6.2-beta3]

### Fixed
- Rettet et problem der mediekatalogen ikke var tilgjengelig
- Rettet et problem der appmigrering ikke kunne kjøres ordentlig
- Rettet et problem der casaos-every-boot rapporterte en feil ved oppstart
- Rettet et problem der Zima ikke kunne nås via det lokale domenenavnet

### Security
- Rettet et sikkerhetsproblem med høy risiko i meldingstjenesten, og forbedret systemkommunikasjonssikkerheten

## [1.6.2-beta2]

### Fixed
- Rettet et problem der visse systemkataloger feilaktig ble identifisert som ugyldige stier

### Optimized
- Optimaliserte konfigurasjonsprosessen for initialisering av skystasjonen i spesifikke scenarier, og fikset problemer med innlasting av filer forårsaket av treg initialisering

## [1.6.2-beta1]

### Security
- Rettet raskt et sikkerhetsproblem med høy risiko i kontoadministrasjonsmodulen, noe som ytterligere forbedret sikkerheten til administratoroperasjoner
- Rettet raskt et sikkerhetsproblem med høy risiko i filtjenesten, og forbedret sikkerheten for filtilgang og operasjoner

### New
- Lagt til mørk modus for Filer-appen
- Lagt til Alibaba Cloud Drive-integrasjonsstøtte
- Oppdaterte Linux-kjernen til 6.18.9
- Lagt til driverstøtte for NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 trådløse enheter, og Cirrus Logic-lydenheter, og lagt til en NVIDIA-driver for automatisk gjenkjenning og tilpasningsmekanisme som automatisk matcher den aktuelle driverversjonen basert på maskinvareversjonen

### Fixed
- Rettet utløp av OneDrive-nøkkel som forårsaket tilkoblingsproblemer, gjenopprettet grunnleggende integrasjonstilgjengelighet og optimalisert nøkkeloppdateringsmekanismen
- Rettet et problem der Collabora Server-appen blokkerte sikkerhetskopier, for å sikre at sikkerhetskopieringsoppgaver kan kjøres som de skal
- Rettet et problem der flere USB-lagringsenheter kunne tildeles samme monteringspunkt ved oppstart
- Rettet et problem der eldre "-device-name"-suffikser ble generert når USB-festepunkter kom i konflikt
- Rettet et problem der lagring opprettet fra en enkeltpartisjonsdisk ikke brukte det brukerspesifiserte navnet som monteringspunkt
- Rettet RAID-degradering etter omstart når en RAID-array ble opprettet fra disker med samme serienummer
- Rettet falske positiver i RAID-oppstartssjekker forårsaket av inkonsekvente enhetsnavnformater for kjøretid

### Optimized
- Optimaliserte høyfrekvente filoperasjonsarbeidsflyter som import, migrering, kryptering, kopiering og kutt
- Optimalisert opplastingsstatus for skydisker, noe som gjør det klarere for brukere å forstå gjeldende fremdrift, fullføringsstatus og årsaker til feil

### Tips
- Hvis du støter på programvareproblemer, kan du gjerne bli med i Discord-fellesskapet vårt for å få kontakt med og få støtte fra over 43 000 Zima-medlemmer!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
