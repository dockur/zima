## [1.6.2-beta1]

### Security
- Naléhavě opravena vysoce riziková bezpečnostní chyba v modulu správy účtů, což dále zvyšuje bezpečnost operací správce
- Naléhavě byl opraven vysoce rizikový bezpečnostní problém v souborové službě, čímž se zlepšila bezpečnost přístupu k souborům a operací

### New
- Přidán tmavý režim pro aplikaci Soubory
- Přidána podpora integrace Alibaba Cloud Drive
- Aktualizováno jádro Linuxu na 6.18.9
- Přidána podpora ovladačů pro NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, bezdrátová zařízení Intel / MediaTek / AIC8800 a zvuková zařízení Cirrus Logic a přidán mechanismus automatické detekce a adaptace ovladače NVIDIA, který automaticky odpovídá příslušné verzi ovladače.

### Fixed
- Opraveno vypršení platnosti klíče OneDrive způsobující problémy s připojením, obnovena dostupnost základní integrace a optimalizován mechanismus aktualizace klíče
- Opraven problém, kdy aplikace Collabora Server blokovala zálohování, čímž bylo zajištěno, že úlohy zálohování mohou probíhat správně
- Opraven problém, kdy bylo možné více úložným zařízením USB přiřadit stejný bod připojení při spuštění
- Opraven problém, kdy se při konfliktu přípojných bodů USB generovaly starší přípony `-device-name`
- Opraven problém, kdy úložiště vytvořené z disku s jedním oddílem nepoužívalo uživatelsky zadaný název jako bod připojení
- Opravena degradace RAID po restartu, když bylo pole RAID vytvořeno z disků se stejným sériovým číslem
- Opraveny falešné poplachy při kontrolách spouštění RAID způsobené nekonzistentními formáty názvů zařízení za běhu

### Optimized
- Optimalizovány pracovní postupy častých operací se soubory, jako jsou import, migrace, šifrování, kopírování a vyjmutí
- Optimalizované zobrazení stavu nahrávání na cloudový disk, díky kterému uživatelé lépe porozumí aktuálnímu průběhu, stavu dokončení a důvodům selhání

### Tips
- Pokud narazíte na nějaké problémy se softwarem, neváhejte se připojit k naší komunitě Discord a získejte podporu od více než 43 000 členů Zima!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
