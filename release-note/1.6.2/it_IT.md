## [1.6.2]

### Security
- È stato corretto con urgenza un problema di sicurezza ad alto rischio nel modulo di gestione degli account, migliorando ulteriormente la sicurezza delle operazioni amministrative
- È stato corretto con urgenza un problema di sicurezza ad alto rischio nel servizio file, migliorando la sicurezza dell'accesso e delle operazioni sui file
- È stato corretto un problema di sicurezza ad alto rischio nel servizio di messaggistica, migliorando la sicurezza delle comunicazioni di sistema
- SSH ora disabilita per impostazione predefinita l'accesso remoto dell'utente root, riducendo il rischio di esposizione degli account con privilegi elevati
- SSH ha aggiunto diverse policy di sicurezza per prevenire gli attacchi brute-force
- Il servizio NFS ora è disabilitato per impostazione predefinita, riducendo il rischio di accesso non autorizzato

### New
- Aggiunta la modalità scura per l'app Files
- Aggiunto il supporto per l'integrazione con Alibaba Cloud Drive
- Kernel Linux aggiornato alla versione 6.18.9
- Aggiunto il supporto driver per NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, dispositivi wireless Intel / MediaTek / AIC8800 e dispositivi audio Cirrus Logic, ed è stato aggiunto un meccanismo di rilevamento e adattamento automatico dei driver NVIDIA che abbina automaticamente la versione appropriata del driver in base all'hardware

### Fixed
- Risolto il problema di connessione causato dalla scadenza della chiave OneDrive, ripristinata la disponibilità di base dell'integrazione e ottimizzato il meccanismo di aggiornamento della chiave
- Risolto un problema per cui l'app Collabora Server bloccava i backup, garantendo che le attività di backup possano essere eseguite correttamente
- Risolto un problema per cui all'avvio a più dispositivi di archiviazione USB poteva essere assegnato lo stesso punto di montaggio
- Risolto un problema per cui venivano generati suffissi legacy `-device-name` quando i punti di montaggio USB entravano in conflitto
- Risolta la degradazione del RAID dopo il riavvio quando un array RAID veniva creato da dischi con lo stesso numero di serie

### Optimized
- Ottimizzati i flussi di lavoro delle operazioni frequenti sui file come importazione, migrazione, crittografia, copia e taglio
- Ottimizzata la visualizzazione dello stato di caricamento del cloud drive, rendendo più chiaro agli utenti comprendere l'avanzamento corrente, lo stato di completamento e le ragioni degli errori

### Tips
- Se riscontri qualsiasi problema software, non esitare a unirti alla nostra community Discord per entrare in contatto con oltre 43.000 membri Zima e ricevere supporto!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
