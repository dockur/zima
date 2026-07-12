## [1.6.2]

### Security
- Sürgősen javítottunk egy magas kockázatú biztonsági hibát a fiókkezelő modulban, tovább növelve az adminisztrátori műveletek biztonságát
- Sürgősen javítottunk egy magas kockázatú biztonsági hibát a fájlszolgáltatásban, javítva a fájlhozzáférés és a fájlműveletek biztonságát
- Javítottunk egy magas kockázatú biztonsági hibát az üzenetküldő szolgáltatásban, javítva a rendszerkommunikáció biztonságát
- Az SSH mostantól alapértelmezés szerint letiltja a root felhasználó távoli bejelentkezését, csökkentve a magas jogosultságú fiókok kitettségi kockázatát
- Az SSH több biztonsági szabályt is hozzáadott a brute-force támadások megelőzésére
- Az NFS szolgáltatás mostantól alapértelmezés szerint le van tiltva, csökkentve a jogosulatlan hozzáférés kockázatát

### New
- Sötét mód került a Files alkalmazásba
- Hozzáadtuk az Alibaba Cloud Drive integráció támogatását
- A Linux kernel 6.18.9-es verzióra frissült
- Illesztőprogram-támogatás került hozzáadásra az NVIDIA 470 / 580 / Open Kernel Module, az Intel Xe / Battlemage, a Realtek RTW88 / RTL8127, az Intel / MediaTek / AIC8800 vezeték nélküli eszközök és a Cirrus Logic audioeszközök számára, valamint hozzáadtunk egy NVIDIA illesztőprogram automatikus felismerési és illesztési mechanizmust, amely a hardver alapján automatikusan a megfelelő illesztőprogram-verziót választja ki

### Fixed
- Javítottuk az OneDrive kulcs lejárata miatti kapcsolódási problémát, helyreállítottuk az integráció alapvető elérhetőségét, és optimalizáltuk a kulcsfrissítési mechanizmust
- Javítottuk azt a hibát, amely miatt a Collabora Server alkalmazás blokkolta a biztonsági mentéseket, biztosítva, hogy a biztonsági mentési feladatok megfelelően fussanak
- Javítottuk azt a hibát, amely miatt indításkor több USB-tárolóeszköz is ugyanazt a csatolási pontot kaphatta
- Javítottuk azt a hibát, amely miatt USB csatolási pont ütközésekor örökölt `-device-name` utótagok jöttek létre
- Javítottuk a RAID újraindítás utáni degradációját, amikor a RAID tömb azonos sorozatszámú lemezekből jött létre

### Optimized
- Optimalizáltuk a nagy gyakoriságú fájlműveleti folyamatokat, például az importálást, migrálást, titkosítást, másolást és kivágást
- Optimalizáltuk a felhőmeghajtó feltöltési állapotának megjelenítését, hogy a felhasználók világosabban megértsék az aktuális folyamatot, a befejezési állapotot és a sikertelenségek okait

### Tips
- Ha bármilyen szoftverproblémába ütközik, bátran csatlakozzon Discord közösségünkhöz, hogy kapcsolatba lépjen több mint 43 000 Zima taggal és támogatást kapjon!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
