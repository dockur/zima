## [1.6.2-beta3]

### Fixed
- Opraven problém, kdy nebylo možné získat přístup k adresáři médií
- Opraven problém, kdy migrace aplikací nemohla správně běžet
- Opraven problém, kdy casaos-every-boot hlásil chybu při spuštění
- Opraven problém, kdy nebylo možné přistupovat k Zimě prostřednictvím názvu místní domény

### Security
- Opraven vysoce rizikový bezpečnostní problém ve službě zasílání zpráv, který zlepšuje zabezpečení systémové komunikace

## [1.6.2-beta2]

### Fixed
- Opraven problém, kdy byly některé systémové adresáře nesprávně identifikovány jako neplatné cesty

### Optimized
- Optimalizoval proces konfigurace inicializace cloudového disku ve specifických scénářích a opravoval problémy s načítáním souborů způsobené pomalou inicializací

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
- Optimalizované pracovní postupy pro vysokofrekvenční operace se soubory, jako je import, migrace, šifrování, kopírování a vyjímání
- Optimalizované zobrazení stavu nahrávání na cloudový disk, díky kterému uživatelé lépe porozumí aktuálnímu průběhu, stavu dokončení a důvodům selhání

### Tips
- Pokud narazíte na nějaké problémy se softwarem, neváhejte se připojit k naší komunitě Discord a získejte podporu od více než 43 000 členů Zima!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
