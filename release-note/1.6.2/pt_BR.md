## [1.6.2]

### Security
- Corrigido com urgência um problema de segurança de alto risco no módulo de gerenciamento de contas, aumentando ainda mais a segurança das operações administrativas
- Corrigido com urgência um problema de segurança de alto risco no serviço de arquivos, melhorando a segurança do acesso e das operações com arquivos
- Corrigido um problema de segurança de alto risco no serviço de mensagens, melhorando a segurança da comunicação do sistema
- O SSH agora desativa por padrão o login remoto do usuário root, reduzindo o risco de exposição de contas com altos privilégios
- O SSH adicionou várias políticas de segurança para evitar ataques de força bruta
- O serviço NFS agora está desativado por padrão, reduzindo o risco de acesso não autorizado

### New
- Adicionado modo escuro ao aplicativo Files
- Adicionado suporte à integração com Alibaba Cloud Drive
- Kernel Linux atualizado para 6.18.9
- Adicionado suporte de drivers para NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, dispositivos sem fio Intel / MediaTek / AIC8800 e dispositivos de áudio Cirrus Logic, além de um mecanismo de detecção e adaptação automática de drivers NVIDIA que corresponde automaticamente à versão adequada do driver com base no hardware

### Fixed
- Corrigido o problema de conexão causado pela expiração da chave do OneDrive, restaurada a disponibilidade básica da integração e otimizado o mecanismo de atualização da chave
- Corrigido um problema em que o aplicativo Collabora Server bloqueava backups, garantindo que as tarefas de backup possam ser executadas corretamente
- Corrigido um problema em que vários dispositivos de armazenamento USB podiam receber o mesmo ponto de montagem na inicialização
- Corrigido um problema em que sufixos legados `-device-name` eram gerados quando havia conflito entre pontos de montagem USB
- Corrigida a degradação do RAID após reinicialização quando um array RAID era criado a partir de discos com o mesmo número de série

### Optimized
- Otimizados fluxos de trabalho de operações frequentes com arquivos, como importação, migração, criptografia, cópia e recorte
- Otimizada a exibição do status de upload do drive em nuvem, deixando mais claro para os usuários o progresso atual, o status de conclusão e os motivos de falha

### Tips
- Se você encontrar qualquer problema de software, fique à vontade para entrar na nossa comunidade do Discord para se conectar com mais de 43.000 membros da Zima e receber suporte!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
