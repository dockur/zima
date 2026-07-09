## [1.6.2]

### Security
- Hitno je ispravljen sigurnosni problem visokog rizika u modulu za upravljanje računima, čime je dodatno poboljšana sigurnost administratorskih radnji
- Hitno je ispravljen sigurnosni problem visokog rizika u servisu za datoteke, čime je poboljšana sigurnost pristupa datotekama i rada s njima
- Ispravljen je sigurnosni problem visokog rizika u servisu za poruke, čime je poboljšana sigurnost komunikacije sustava
- SSH sada prema zadanim postavkama onemogućuje udaljenu prijavu korisniku root, čime se smanjuje rizik izloženosti računa s visokim privilegijama
- SSH je dodao nekoliko sigurnosnih pravila za sprječavanje napada grubom silom
- NFS servis sada je prema zadanim postavkama onemogućen, čime se smanjuje rizik od neovlaštenog pristupa

### New
- Dodan je tamni način rada za aplikaciju Files
- Dodana je podrška za integraciju s Alibaba Cloud Driveom
- Linux jezgra je ažurirana na 6.18.9
- Dodana je podrška za upravljačke programe za NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 bežične uređaje i Cirrus Logic audio uređaje, a dodan je i mehanizam za automatsko prepoznavanje i prilagodbu NVIDIA upravljačkih programa koji prema hardveru automatski odabire odgovarajuću verziju upravljačkog programa

### Fixed
- Ispravljen je problem s povezivanjem uzrokovan istekom ključa za OneDrive, vraćena je osnovna dostupnost integracije i optimiziran je mehanizam ažuriranja ključa
- Ispravljen je problem zbog kojeg je aplikacija Collabora Server blokirala sigurnosne kopije, čime je osigurano da se zadaci sigurnosnog kopiranja mogu pravilno izvršavati
- Ispravljen je problem zbog kojeg je pri pokretanju više USB uređaja za pohranu moglo dobiti istu točku montiranja
- Ispravljen je problem zbog kojeg su se pri sukobu USB točaka montiranja generirali naslijeđeni nastavci `-device-name`
- Ispravljena je degradacija RAID-a nakon ponovnog pokretanja kada je RAID polje stvoreno od diskova s istim serijskim brojem

### Optimized
- Optimizirani su česti tijekovi rada s datotekama kao što su uvoz, migracija, šifriranje, kopiranje i izrezivanje
- Optimiziran je prikaz statusa prijenosa na oblačni disk kako bi korisnicima bilo jasnije trenutno napredovanje, stanje dovršenosti i razlozi neuspjeha

### Tips
- Ako naiđete na bilo kakve softverske probleme, slobodno se pridružite našoj Discord zajednici kako biste se povezali s više od 43.000 članova Zime i dobili podršku!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
