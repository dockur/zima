## [1.6.2-beta1]

### Security
- Ein risikoreiches Sicherheitsproblem im Kontoverwaltungsmodul wurde dringend behoben, wodurch die Sicherheit von Administratorvorgängen weiter verbessert wurde
- Ein risikoreiches Sicherheitsproblem im Dateidienst wurde dringend behoben und die Sicherheit des Dateizugriffs und der Dateivorgänge verbessert

### New
- Dunkler Modus für die Dateien-App hinzugefügt
- Unterstützung für die Alibaba Cloud Drive-Integration hinzugefügt
- Aktualisierter Linux-Kernel auf 6.18.9
- Treiberunterstützung für NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel- / MediaTek- / AIC8800-Wireless-Geräte sowie Cirrus Logic-Audiogeräte hinzugefügt. Außerdem wurde ein Mechanismus zur automatischen Erkennung und Anpassung von NVIDIA-Treibern hinzugefügt, der anhand der Hardware automatisch die passende Treiberversion auswählt.

### Fixed
- Der Ablauf des OneDrive-Schlüssels, der zu Verbindungsproblemen führte, wurde behoben, die grundlegende Verfügbarkeit der Integration wiederhergestellt und der Schlüsselaktualisierungsmechanismus optimiert
- Es wurde ein Problem behoben, bei dem die Collabora Server-App Sicherungen blockierte, um sicherzustellen, dass Sicherungsaufgaben ordnungsgemäß ausgeführt werden können
- Es wurde ein Problem behoben, bei dem mehreren USB-Speichergeräten beim Start derselbe Mount-Punkt zugewiesen werden konnte
- Es wurde ein Problem behoben, bei dem ältere „-device-name“-Suffixe generiert wurden, wenn USB-Mount-Punkte in Konflikt standen
- Es wurde ein Problem behoben, bei dem Speicher, der von einer Einzelpartitionsfestplatte erstellt wurde, nicht den vom Benutzer angegebenen Namen als Bereitstellungspunkt verwendete
- RAID-Verschlechterung nach dem Neustart behoben, wenn ein RAID-Array aus Festplatten mit derselben Seriennummer erstellt wurde
- Fehlalarme bei RAID-Startprüfungen behoben, die durch inkonsistente Laufzeitgerätenamenformate verursacht wurden

### Optimized
- Optimierte Arbeitsabläufe für hochfrequente Dateivorgänge wie Import, Migration, Verschlüsselung, Kopieren und Ausschneiden
- Optimierte Statusanzeige für das Hochladen von Cloud-Laufwerken, sodass Benutzer den aktuellen Fortschritt, den Abschlussstatus und die Fehlergründe besser verstehen können

### Tips
- Wenn Sie auf Softwareprobleme stoßen, können Sie sich gerne unserer Discord-Community anschließen, um mit über 43.000 Zima-Mitgliedern in Kontakt zu treten und Unterstützung von ihnen zu erhalten!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
