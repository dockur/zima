## [1.6.2-beta1]

### Security
- Naliehavo bol opravený vysoko rizikový bezpečnostný problém v module správy účtu, čím sa ďalej zlepšila bezpečnosť operácií správcu
- Naliehavo sa opravila vysoko riziková bezpečnostná chyba v súborovej službe, čím sa zvyšuje bezpečnosť prístupu k súborom a operácií so súbormi

### New
- Pridaný tmavý režim pre aplikáciu Súbory
- Pridaná podpora integrácie služby Alibaba Cloud Drive
- Aktualizované jadro Linuxu na 6.18.9
- Pridaná podpora ovládačov pre NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, bezdrôtové zariadenia Intel / MediaTek / AIC8800 a zvukové zariadenia Cirrus Logic a pridaný mechanizmus automatickej detekcie a adaptácie ovládača NVIDIA, ktorý automaticky zodpovedá príslušnej verzii ovládača

### Fixed
- Opravené uplynutie platnosti kľúča OneDrive spôsobujúce problémy s pripojením, obnovená dostupnosť základnej integrácie a optimalizovaný mechanizmus aktualizácie kľúča
- Opravený problém, kedy aplikácia Collabora Server blokovala zálohy, čím sa zaistilo, že úlohy zálohovania budú fungovať správne
- Opravený problém, kedy viacerým úložným zariadeniam USB bolo možné priradiť rovnaký bod pripojenia pri spustení
- Opravený problém, pri ktorom sa pri konflikte bodov pripojenia USB generovali staršie prípony „-názov-zariadenia“
- Opravený problém, kedy úložisko vytvorené z disku s jedným oddielom nepoužívalo ako bod pripojenia užívateľom zadaný názov
- Opravená degradácia RAID po reštarte, keď bolo pole RAID vytvorené z diskov s rovnakým sériovým číslom
- Opravené falošné poplachy pri kontrolách spustenia RAID spôsobené nekonzistentnými formátmi názvov zariadení v režime runtime

### Optimized
- Optimalizované pracovné postupy vysokofrekvenčnej prevádzky súborov, ako je import, migrácia, šifrovanie, kopírovanie a vystrihovanie
- Optimalizované zobrazenie stavu nahrávania na cloudový disk, vďaka čomu môžu používatelia lepšie pochopiť aktuálny priebeh, stav dokončenia a dôvody zlyhania

### Tips
- Ak narazíte na akékoľvek problémy so softvérom, neváhajte sa pripojiť k našej komunite Discord a získajte podporu od viac ako 43 000 členov Zima!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
