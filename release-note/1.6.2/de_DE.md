## [1.6.2]

### Security
- Ein sicherheitskritisches Problem mit hohem Risiko im Kontoverwaltungsmodul wurde dringend behoben, wodurch die Sicherheit von Administratorvorgängen weiter verbessert wird
- Ein sicherheitskritisches Problem mit hohem Risiko im Dateidienst wurde dringend behoben, wodurch die Sicherheit von Dateizugriffen und -operationen verbessert wird
- Ein sicherheitskritisches Problem mit hohem Risiko im Nachrichtendienst wurde behoben, wodurch die Sicherheit der Systemkommunikation verbessert wird
- SSH deaktiviert nun standardmäßig die Remote-Anmeldung für den Benutzer root und verringert so das Risiko der Offenlegung hochprivilegierter Konten
- SSH hat mehrere Sicherheitsrichtlinien hinzugefügt, um Brute-Force-Angriffe zu verhindern
- Der NFS-Dienst ist nun standardmäßig deaktiviert, wodurch das Risiko unbefugter Zugriffe reduziert wird

### New
- Dunkelmodus für die Files-App hinzugefügt
- Unterstützung für die Integration von Alibaba Cloud Drive hinzugefügt
- Linux-Kernel auf Version 6.18.9 aktualisiert
- Treiberunterstützung für NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800-WLAN-Geräte und Cirrus Logic-Audiogeräte hinzugefügt sowie ein Mechanismus zur automatischen Erkennung und Anpassung von NVIDIA-Treibern ergänzt, der basierend auf der Hardware automatisch die passende Treiberversion auswählt

### Fixed
- Das durch den abgelaufenen OneDrive-Schlüssel verursachte Verbindungsproblem wurde behoben, die grundlegende Integrationsverfügbarkeit wurde wiederhergestellt und der Mechanismus zur Schlüsselaktualisierung wurde optimiert
- Ein Problem wurde behoben, bei dem die App Collabora Server Sicherungen blockierte, sodass Sicherungsaufgaben wieder ordnungsgemäß ausgeführt werden können
- Ein Problem wurde behoben, bei dem mehreren USB-Speichergeräten beim Start derselbe Einhängepunkt zugewiesen werden konnte
- Ein Problem wurde behoben, bei dem bei Konflikten zwischen USB-Einhängepunkten veraltete Suffixe vom Typ `-device-name` erzeugt wurden
- RAID-Degradierung nach einem Neustart wurde behoben, wenn ein RAID-Verbund aus Festplatten mit derselben Seriennummer erstellt wurde

### Optimized
- Häufige Dateiabläufe wie Import, Migration, Verschlüsselung, Kopieren und Ausschneiden wurden optimiert
- Die Anzeige des Upload-Status von Cloud-Laufwerken wurde optimiert, damit Benutzer den aktuellen Fortschritt, den Abschlussstatus und die Fehlerursachen klarer verstehen können

### Tips
- Wenn Sie auf Softwareprobleme stoßen, treten Sie gerne unserer Discord-Community bei, um sich mit über 43.000 Zima-Mitgliedern auszutauschen und Unterstützung zu erhalten!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
