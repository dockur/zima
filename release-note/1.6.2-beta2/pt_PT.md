## [1.6.2-beta2]

### Fixed
- Corrigido um problema em que determinados diretórios do sistema eram identificados incorretamente como caminhos inválidos

### Optimized
- Otimizou o processo de configuração de inicialização da unidade de nuvem em cenários específicos, corrigindo problemas de carregamento de arquivos causados ​​por inicialização lenta

## [1.6.2-beta1]

### Security
- Corrigido urgentemente um problema de segurança de alto risco no módulo de gerenciamento de contas, melhorando ainda mais a segurança das operações do administrador
- Corrigido urgentemente um problema de segurança de alto risco no serviço de arquivos, melhorando a segurança do acesso e das operações de arquivos

### New
- Adicionado modo escuro para o aplicativo Arquivos
- Adicionado suporte de integração do Alibaba Cloud Drive
- Kernel Linux atualizado para 6.18.9
- Adicionado suporte de driver para dispositivos sem fio NVIDIA 470/580 / Open Kernel Module, Intel Xe / Battlemage, Realtek RTW88 / RTL8127, Intel / MediaTek / AIC8800 e dispositivos de áudio Cirrus Logic, e adicionado um mecanismo de detecção automática e adaptação de driver NVIDIA que corresponde automaticamente à versão apropriada do driver com base no hardware

### Fixed
- Corrigida a expiração da chave do OneDrive que causava problemas de conexão, restaurada a disponibilidade da integração básica e otimizado o mecanismo de atualização da chave
- Corrigido um problema em que o aplicativo Collabora Server bloqueava backups, garantindo que as tarefas de backup pudessem ser executadas corretamente
- Corrigido um problema em que vários dispositivos de armazenamento USB podiam receber o mesmo ponto de montagem na inicialização
- Corrigido um problema em que sufixos herdados `-device-name` eram gerados quando pontos de montagem USB entravam em conflito
- Corrigido um problema em que o armazenamento criado a partir de um disco de partição única não usava o nome especificado pelo usuário como ponto de montagem
- Corrigida a degradação do RAID após a reinicialização quando uma matriz RAID era criada a partir de discos com o mesmo número de série
- Corrigidos falsos positivos em verificações de inicialização de RAID causados ​​por formatos de nome de dispositivo de tempo de execução inconsistentes

### Optimized
- Fluxos de trabalho otimizados de operação de arquivos de alta frequência, como importação, migração, criptografia, cópia e corte
- Exibição otimizada do status de upload da unidade na nuvem, tornando mais claro para os usuários entenderem o progresso atual, o status de conclusão e os motivos da falha

### Tips
- Se você encontrar algum problema de software, sinta-se à vontade para ingressar em nossa comunidade Discord para se conectar e obter suporte de mais de 43.000 membros Zima!
- <a href="https://zimaboard.com/discord" target="_blank" style="color:blue">https://zimaboard.com/discord</a>
