## [1.6.2-beta2]

### Fixed
- Riješen je problem u kojem su određeni sistemski direktoriji bili netočno identificirani kao nevažeći putovi

### Optimized
- Optimiziran proces konfiguracije inicijalizacije pogona u oblaku u određenim scenarijima, popravljajući probleme s učitavanjem datoteka uzrokovane sporom inicijalizacijom

## [1.6.2-beta1]

### Security
- Hitno je popravljen visokorizični sigurnosni problem u modulu za upravljanje računom, dodatno poboljšavajući sigurnost administratorskih operacija
- Hitno je popravljen visokorizični sigurnosni problem u usluzi datoteka, poboljšavajući sigurnost pristupa datotekama i operacija

### New
- Dodan tamni način rada za aplikaciju Datoteke
- Dodana podrška za integraciju Alibaba Cloud Drivea
- Linux kernel ažuriran na 6.18.9
- Dodana podrška za upravljačke programe za NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 bežične uređaje i Cirrus Logic audio uređaje te dodan NVIDIA mehanizam za automatsko otkrivanje i prilagodbu upravljačkog programa koji automatski odgovara odgovarajućoj verziji upravljačkog programa na temelju hardvera

### Fixed
- Riješen je istek OneDrive ključa koji je uzrokovao probleme s vezom, vraćena osnovna dostupnost integracije i optimiziran mehanizam ažuriranja ključa
- Riješen je problem u kojem je aplikacija Collabora Server blokirala sigurnosne kopije, osiguravajući da se zadaci sigurnosnog kopiranja mogu ispravno izvoditi
- Riješen je problem pri kojem se više USB uređaja za pohranu moglo dodijeliti istoj točki montiranja pri pokretanju
- Riješen je problem u kojem su naslijeđeni sufiksi `-device-name` generirani kada su USB točke montiranja bile u sukobu
- Riješen je problem u kojem pohrana stvorena s diska s jednom particijom nije koristila korisničko ime kao točku montiranja
- Popravljena degradacija RAID-a nakon ponovnog pokretanja kada je RAID niz stvoren od diskova s ​​istim serijskim brojem
- Popravljeni lažni pozitivni rezultati u provjerama pokretanja RAID-a uzrokovani nedosljednim formatima naziva uređaja za vrijeme izvođenja

### Optimized
- Optimizirani tijekovi rada s datotekama visoke frekvencije kao što su uvoz, migracija, enkripcija, kopiranje i rezanje
- Optimizirani prikaz statusa prijenosa pogona u oblaku, što korisnicima čini jasnijim razumijevanje trenutnog napretka, statusa završetka i razloga neuspjeha

### Tips
- Ako naiđete na bilo kakve probleme sa softverom, slobodno se pridružite našoj Discord zajednici kako biste se povezali i dobili podršku od preko 43 000 Zima članova!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
