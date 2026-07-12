## [1.6.2]

### Security
- Naliehavo bol opravený bezpečnostný problém s vysokým rizikom v module správy účtov, čím sa ďalej zvyšuje bezpečnosť operácií správcu
- Naliehavo bol opravený bezpečnostný problém s vysokým rizikom v súborovej službe, čím sa zlepšuje bezpečnosť prístupu k súborom a práce s nimi
- Bol opravený bezpečnostný problém s vysokým rizikom v službe správ, čím sa zlepšuje bezpečnosť systémovej komunikácie
- SSH teraz predvolene zakazuje vzdialené prihlásenie používateľa root, čím znižuje riziko vystavenia účtov s vysokými oprávneniami
- SSH pridalo niekoľko bezpečnostných zásad na zabránenie útokom hrubou silou
- Služba NFS je teraz predvolene zakázaná, čím sa znižuje riziko neoprávneného prístupu

### New
- Pridaný tmavý režim pre aplikáciu Files
- Pridaná podpora integrácie s Alibaba Cloud Drive
- Linuxové jadro bolo aktualizované na verziu 6.18.9
- Pridaná podpora ovládačov pre NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, bezdrôtové zariadenia Intel / MediaTek / AIC8800 a zvukové zariadenia Cirrus Logic, a zároveň bol pridaný mechanizmus automatickej detekcie a prispôsobenia ovládačov NVIDIA, ktorý automaticky vyberá vhodnú verziu ovládača podľa hardvéru

### Fixed
- Opravený problém s pripojením spôsobený expiráciou kľúča OneDrive, obnovená základná dostupnosť integrácie a optimalizovaný mechanizmus aktualizácie kľúča
- Opravený problém, pri ktorom aplikácia Collabora Server blokovala zálohy, čím sa zabezpečilo, že úlohy zálohovania môžu bežať správne
- Opravený problém, pri ktorom mohlo byť pri štarte viacerým USB úložným zariadeniam priradené rovnaké miesto pripojenia
- Opravený problém, pri ktorom sa pri konflikte miest pripojenia USB generovali staršie prípony `-device-name`
- Opravená degradácia RAID po reštarte, keď bolo pole RAID vytvorené z diskov s rovnakým sériovým číslom

### Optimized
- Optimalizované pracovné postupy častých operácií so súbormi, ako sú import, migrácia, šifrovanie, kopírovanie a vystrihnutie
- Optimalizované zobrazenie stavu nahrávania do cloudového disku, aby používatelia jasnejšie chápali aktuálny priebeh, stav dokončenia a príčiny zlyhania

### Tips
- Ak narazíte na akékoľvek problémy so softvérom, neváhajte sa pripojiť k našej komunite na Discorde, spojiť sa s viac ako 43 000 členmi Zima a získať podporu!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
