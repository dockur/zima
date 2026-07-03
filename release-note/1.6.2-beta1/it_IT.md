## [1.6.2-beta1]

### Security
- Risolto urgentemente un problema di sicurezza ad alto rischio nel modulo di gestione dell'account, migliorando ulteriormente la sicurezza delle operazioni dell'amministratore
- Risolto urgentemente un problema di sicurezza ad alto rischio nel servizio file, migliorando la sicurezza dell'accesso e delle operazioni sui file

### New
- Aggiunta la modalità oscura per l'app File
- Aggiunto il supporto per l'integrazione di Alibaba Cloud Drive
- Kernel Linux aggiornato alla 6.18.9
- Aggiunto supporto driver per dispositivi wireless NVIDIA 470/580/Open Kernel Module, Intel Xe/Battlemage, Realtek RTW88/RTL8127, Intel/MediaTek/AIC8800 e dispositivi audio Cirrus Logic, aggiunto un meccanismo di rilevamento automatico e adattamento del driver NVIDIA che corrisponde automaticamente alla versione del driver appropriata in base all'hardware

### Fixed
- Risolta la scadenza della chiave OneDrive che causava problemi di connessione, ripristinata la disponibilità dell'integrazione di base e ottimizzato il meccanismo di aggiornamento della chiave
- Risolto un problema per cui l'app Collabora Server bloccava i backup, garantendo che le attività di backup potessero essere eseguite correttamente
- Risolto un problema per cui a più dispositivi di archiviazione USB poteva essere assegnato lo stesso punto di montaggio all'avvio
- Risolto un problema per cui i suffissi legacy `-device-name` venivano generati quando i punti di montaggio USB erano in conflitto
- Risolto un problema per cui l'archiviazione creata da un disco a partizione singola non utilizzava il nome specificato dall'utente come punto di montaggio
- Risolto il problema con il degrado del RAID dopo il riavvio quando veniva creato un array RAID da dischi con lo stesso numero di serie
- Risolti i falsi positivi nei controlli di avvio RAID causati da formati incoerenti dei nomi dei dispositivi di runtime

### Optimized
- Flussi di lavoro ottimizzati per operazioni sui file ad alta frequenza come importazione, migrazione, crittografia, copia e taglio
- Visualizzazione ottimizzata dello stato di caricamento dell'unità cloud, che consente agli utenti di comprendere più chiaramente l'avanzamento corrente, lo stato di completamento e i motivi dell'errore

### Tips
- Se riscontri problemi software, non esitare a unirti alla nostra community Discord per connetterti e ottenere supporto da oltre 43.000 membri Zima!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
