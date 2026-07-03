## [1.6.2-beta1]

### Security
- Sürgősen kijavítottunk egy magas kockázatú biztonsági hibát a számlakezelési modulban, tovább javítva a rendszergazdai műveletek biztonságát
- Sürgősen kijavítottuk a fájlszolgáltatás magas kockázatú biztonsági problémáját, javítva a fájlhozzáférés és -műveletek biztonságát

### New
- Sötét mód hozzáadva a Fájlok alkalmazáshoz
- Alibaba Cloud Drive integrációs támogatás hozzáadva
- A Linux kernel frissítve 6.18.9-re
- Illesztőprogram-támogatás hozzáadva az NVIDIA 470 / 580 / Open Kernel Module, az Intel Xe / Battlemage, a Realtek RTW88 / RTL8127, az Intel / MediaTek / AIC8800 vezeték nélküli eszközök és a Cirrus Logic audioeszközök számára, valamint hozzáadott egy NVIDIA illesztőprogram automatikus észlelési és adaptációs mechanizmusa, amely automatikusan illeszkedik a megfelelő hardver-illesztőprogram-verzióhoz.

### Fixed
- Kijavítottuk a kapcsolati problémákat okozó OneDrive-kulcs lejáratát, visszaállítottuk az alapvető integráció elérhetőségét, és optimalizáltuk a kulcsfrissítési mechanizmust
- Kijavítottuk azt a hibát, amely miatt a Collabora Server alkalmazás blokkolta a biztonsági mentéseket, így biztosította a biztonsági mentési feladatok megfelelő futtatását
- Kijavítottuk azt a hibát, amely miatt indításkor több USB-tárolóeszközhöz lehetett hozzárendelni ugyanazt a csatlakoztatási pontot
- Kijavítottuk azt a hibát, amely miatt örökölt "-eszköznév" utótagok keletkeztek, amikor az USB-csatlakozási pontok ütköztek
- Kijavítottuk azt a hibát, amely miatt az egypartíciós lemezről létrehozott tárhely nem a felhasználó által megadott nevet használta csatolási pontként
- Javítva a RAID romlása újraindítás után, amikor RAID tömb jött létre azonos sorozatszámú lemezekről
- Javítva a téves pozitívumok a RAID indítási ellenőrzéseiben, amelyeket az inkonzisztens futásidejű eszköznév-formátumok okoztak

### Optimized
- Optimalizált nagyfrekvenciás fájlkezelési munkafolyamatok, például importálás, áttelepítés, titkosítás, másolás és kivágás
- Optimalizált felhőalapú meghajtó feltöltési állapotának megjelenítése, így a felhasználók könnyebben megérthetik az aktuális folyamatot, a befejezés állapotát és a hiba okait

### Tips
- Ha bármilyen szoftverproblémával találkozik, bátran csatlakozzon Discord közösségünkhöz, hogy kapcsolatba léphessen a Zima több mint 43 000 tagjával, és támogatást kapjon!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
