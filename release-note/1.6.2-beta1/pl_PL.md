## [1.6.2-beta1]

### Security
- Pilnie naprawiono problem bezpieczeństwa wysokiego ryzyka w module zarządzania kontami, jeszcze bardziej poprawiając bezpieczeństwo działań administratora
- Pilnie naprawiono problem bezpieczeństwa wysokiego ryzyka w usłudze plików, poprawiając bezpieczeństwo dostępu do plików i operacji

### New
- Dodano tryb ciemny dla aplikacji Pliki
- Dodano obsługę integracji Alibaba Cloud Drive
- Zaktualizowano jądro Linuksa do wersji 6.18.9
- Dodano obsługę sterowników dla urządzeń bezprzewodowych NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 i urządzeń audio Cirrus Logic oraz dodano mechanizm automatycznego wykrywania i adaptacji sterowników NVIDIA, który automatycznie dopasowuje odpowiednią wersję sterownika w zależności od sprzętu

### Fixed
- Naprawiono wygaśnięcie klucza OneDrive powodujące problemy z połączeniem, przywrócono podstawową dostępność integracji i zoptymalizowano mechanizm aktualizacji kluczy
- Naprawiono problem polegający na tym, że aplikacja Collabora Server blokowała kopie zapasowe, zapewniając prawidłowe działanie zadań tworzenia kopii zapasowych
- Naprawiono problem polegający na tym, że wiele urządzeń pamięci masowej USB mogło zostać przypisanych do tego samego punktu montowania podczas uruchamiania
- Naprawiono problem polegający na generowaniu starszych sufiksów `-device-name` w przypadku konfliktu punktów podłączenia USB
- Naprawiono problem polegający na tym, że pamięć utworzona z dysku z jedną partycją nie używała nazwy określonej przez użytkownika jako punktu podłączenia
- Naprawiono degradację RAID po ponownym uruchomieniu, gdy macierz RAID została utworzona z dysków o tym samym numerze seryjnym
- Naprawiono fałszywe alarmy podczas sprawdzania uruchamiania RAID spowodowane niespójnymi formatami nazw urządzeń w czasie wykonywania

### Optimized
- Zoptymalizowane przepływy pracy związane z operacjami na plikach o wysokiej częstotliwości, takie jak import, migracja, szyfrowanie, kopiowanie i wycinanie
- Zoptymalizowane wyświetlanie statusu przesyłania na dysk w chmurze, dzięki czemu użytkownicy mogą lepiej zrozumieć bieżący postęp, status ukończenia i przyczyny niepowodzeń

### Tips
- Jeśli napotkasz jakiekolwiek problemy z oprogramowaniem, nie wahaj się dołączyć do naszej społeczności Discord, aby połączyć się i uzyskać wsparcie od ponad 43 000 członków Zima!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
