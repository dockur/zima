## [1.6.2]

### Security
- Naléhavě byla opravena vysoce riziková bezpečnostní chyba v modulu správy účtů, což dále zvyšuje bezpečnost operací správců
- Naléhavě byla opravena vysoce riziková bezpečnostní chyba ve službě souborů, což zvyšuje bezpečnost přístupu k souborům a práce s nimi
- Byla opravena vysoce riziková bezpečnostní chyba ve službě zpráv, což zvyšuje bezpečnost systémové komunikace
- SSH nyní ve výchozím nastavení zakazuje vzdálené přihlášení uživatele root, čímž snižuje riziko vystavení vysoce privilegovaných účtů
- SSH přidalo několik bezpečnostních zásad k zabránění útokům hrubou silou
- Služba NFS je nyní ve výchozím nastavení zakázána, což snižuje riziko neoprávněného přístupu

### New
- Přidán tmavý režim pro aplikaci Files
- Přidána podpora integrace s Alibaba Cloud Drive
- Linuxové jádro bylo aktualizováno na verzi 6.18.9
- Přidána podpora ovladačů pro NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, bezdrátová zařízení Intel / MediaTek / AIC8800 a zvuková zařízení Cirrus Logic, a byl přidán mechanismus automatické detekce a přizpůsobení ovladače NVIDIA, který automaticky vybere vhodnou verzi ovladače podle hardwaru

### Fixed
- Opraven problém s připojením způsobený expirací klíče OneDrive, obnovena základní dostupnost integrace a optimalizován mechanismus aktualizace klíče
- Opraven problém, kdy aplikace Collabora Server blokovala zálohy, takže úlohy zálohování mohou nyní běžet správně
- Opraven problém, kdy mohlo být při spuštění více USB úložným zařízením přiřazeno stejné připojovací místo
- Opraven problém, kdy se při konfliktu připojovacích bodů USB generovaly starší přípony `-device-name`
- Opravena degradace RAID po restartu při vytvoření RAID pole z disků se stejným sériovým číslem

### Optimized
- Optimalizovány pracovní postupy pro časté operace se soubory, jako je import, migrace, šifrování, kopírování a vyjmutí
- Optimalizováno zobrazení stavu nahrávání do cloudového disku, aby uživatelé lépe chápali aktuální průběh, stav dokončení a důvody selhání

### Tips
- Pokud narazíte na jakékoli problémy se softwarem, neváhejte se připojit k naší komunitě na Discordu, spojit se s více než 43 000 členy Zima a získat podporu!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
