## [1.6.2]

### Security
- Foi corrigido com urgência um problema de segurança de alto risco no módulo de gestão de contas, melhorando ainda mais a segurança das operações administrativas
- Foi corrigido com urgência um problema de segurança de alto risco no serviço de ficheiros, melhorando a segurança do acesso e das operações com ficheiros
- Foi corrigido um problema de segurança de alto risco no serviço de mensagens, melhorando a segurança da comunicação do sistema
- O SSH desativa agora por predefinição o início de sessão remoto do utilizador root, reduzindo o risco de exposição de contas com privilégios elevados
- O SSH adicionou várias políticas de segurança para prevenir ataques de força bruta
- O serviço NFS encontra-se agora desativado por predefinição, reduzindo o risco de acesso não autorizado

### New
- Adicionado modo escuro à aplicação Files
- Adicionado suporte à integração com o Alibaba Cloud Drive
- O kernel Linux foi atualizado para a versão 6.18.9
- Foi adicionado suporte de controladores para NVIDIA 470 / 580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, dispositivos sem fios Intel / MediaTek / AIC8800 e dispositivos de áudio Cirrus Logic, bem como um mecanismo de deteção e adaptação automática de controladores NVIDIA que associa automaticamente a versão adequada do controlador com base no hardware

### Fixed
- Foi corrigido o problema de ligação causado pela expiração da chave OneDrive, foi restaurada a disponibilidade básica da integração e foi otimizado o mecanismo de atualização da chave
- Foi corrigido um problema em que a aplicação Collabora Server bloqueava as cópias de segurança, garantindo que as tarefas de cópia de segurança podem ser executadas corretamente
- Foi corrigido um problema em que vários dispositivos de armazenamento USB podiam receber o mesmo ponto de montagem no arranque
- Foi corrigido um problema em que eram gerados sufixos herdados `-device-name` quando havia conflitos entre pontos de montagem USB
- Foi corrigida a degradação do RAID após reinício quando um array RAID era criado a partir de discos com o mesmo número de série

### Optimized
- Foram otimizados os fluxos de trabalho de operações frequentes com ficheiros, como importação, migração, encriptação, cópia e corte
- Foi otimizada a apresentação do estado de carregamento da unidade na cloud, tornando mais claro para os utilizadores compreender o progresso atual, o estado de conclusão e as razões das falhas

### Tips
- Se encontrar qualquer problema de software, junte-se à nossa comunidade Discord para contactar com mais de 43.000 membros da Zima e obter apoio!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
