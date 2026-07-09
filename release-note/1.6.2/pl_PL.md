## [1.6.2]

### Security
- Pilnie naprawiono poważny problem bezpieczeństwa o wysokim ryzyku w module zarządzania kontami, dodatkowo zwiększając bezpieczeństwo operacji administracyjnych
- Pilnie naprawiono poważny problem bezpieczeństwa o wysokim ryzyku w usłudze plików, poprawiając bezpieczeństwo dostępu do plików i operacji na nich
- Naprawiono poważny problem bezpieczeństwa o wysokim ryzyku w usłudze wiadomości, poprawiając bezpieczeństwo komunikacji systemowej
- SSH domyślnie wyłącza teraz zdalne logowanie użytkownika root, zmniejszając ryzyko ekspozycji kont o wysokich uprawnieniach
- SSH dodało kilka zasad bezpieczeństwa, aby zapobiegać atakom brute-force
- Usługa NFS jest teraz domyślnie wyłączona, co zmniejsza ryzyko nieautoryzowanego dostępu

### New
- Dodano tryb ciemny do aplikacji Files
- Dodano obsługę integracji z Alibaba Cloud Drive
- Zaktualizowano jądro Linux do wersji 6.18.9
- Dodano obsługę sterowników dla NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, urządzeń bezprzewodowych Intel / MediaTek / AIC8800 oraz urządzeń audio Cirrus Logic, a także dodano mechanizm automatycznego wykrywania i dopasowywania sterowników NVIDIA, który automatycznie dobiera odpowiednią wersję sterownika na podstawie sprzętu

### Fixed
- Naprawiono problemy z połączeniem spowodowane wygaśnięciem klucza OneDrive, przywrócono podstawową dostępność integracji i zoptymalizowano mechanizm aktualizacji klucza
- Naprawiono problem, w którym aplikacja Collabora Server blokowała kopie zapasowe, zapewniając prawidłowe wykonywanie zadań tworzenia kopii zapasowych
- Naprawiono problem, w którym przy uruchamianiu kilku urządzeniom pamięci USB mógł zostać przypisany ten sam punkt montowania
- Naprawiono problem, w którym w przypadku konfliktu punktów montowania USB generowane były starsze przyrostki `-device-name`
- Naprawiono degradację RAID po ponownym uruchomieniu, gdy macierz RAID była tworzona z dysków o tym samym numerze seryjnym

### Optimized
- Zoptymalizowano często używane przepływy operacji na plikach, takie jak import, migracja, szyfrowanie, kopiowanie i wycinanie
- Zoptymalizowano wyświetlanie statusu przesyłania do chmury, aby użytkownicy mogli wyraźniej rozumieć bieżący postęp, stan ukończenia i przyczyny niepowodzeń

### Tips
- Jeśli napotkasz jakiekolwiek problemy z oprogramowaniem, dołącz do naszej społeczności Discord, aby połączyć się z ponad 43 000 członków Zima i uzyskać wsparcie!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
