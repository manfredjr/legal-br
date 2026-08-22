# Revisão - Termos de Uso QuadraJá

| | |
|---|---|
| Documento de origem | `testes/termos-de-uso-exemplo.md` |
| Tipo | Termos de uso de aplicativo (contrato de adesão) |
| Partes | QuadraJá (fornecedor) e usuário pessoa física (consumidor) |
| Solicitante | [PREENCHER] |
| Data da revisão | 2026-08-21 |

## 1. Resumo executivo

Termos de uso de aplicativo de reserva de quadras e organização de torneios amadores de padel. O documento chegou em estado ruim: as nove cláusulas têm apontamento, e oito delas contêm cláusula que o Código de Defesa do Consumidor declara nula de pleno direito ou que a LGPD trata como consentimento inválido.

O problema não é de redação, é de concepção. O texto foi escrito para transferir todo o risco ao usuário - renúncia a indenização, cessão perpétua de imagem, retenção eterna de dados, nenhum reembolso, alteração retroativa. Em relação de consumo, cláusula desse tipo não vale, e o efeito prático é o oposto do pretendido: a empresa fica exposta e sem a proteção que uma cláusula bem calibrada daria.

Não dá para ajustar por emenda. A recomendação é substituição integral pelo texto da seção 9.

**Situação:** precisa de reescrita

| Severidade | Quantidade |
|---|---|
| Risco alto | 8 |
| Risco médio | 1 |
| Risco baixo | 0 |
| Pendências de validação | 3 |

## 2. Contexto e premissas

**Fatos confirmados** - o que veio do documento.

- Aplicativo de reserva de quadras e organização de torneios amadores de padel.
- Há cobrança: inscrição em torneio paga no ato, com taxa de serviço.
- Há coleta de dados pessoais no cadastro, incluindo CPF, endereço residencial e foto de rosto.
- Há menores no ambiente: a cláusula 2 admite cadastro de menores de 18 anos e a cláusula 4 menciona expressamente "menores participantes" inscritos por responsável.
- Há uso de imagem, inclusive comercial e publicitária.
- Há atividade física com risco de lesão: a cláusula 6 cita lesões ocorridas durante as partidas.

**Hipóteses de trabalho** - assumido por ausência de informação. Se alguma estiver errada, a análise muda.

- A QuadraJá é fornecedora e o usuário é destinatário final, o que configura relação de consumo (CDC, arts. 2º e 3º). Toda a análise parte disso.
- A QuadraJá é a organizadora dos torneios, ou responde por eles perante o usuário. A cláusula 5 fala em cancelamento "pela organização" sem distinguir os papéis.
- A quadra é operada ou intermediada pela QuadraJá. A cláusula 6 assume responsabilidade pela manutenção ao mencioná-la.
- A foto de rosto é usada como identificação visual do perfil, não para reconhecimento facial. Se houver reconhecimento facial, o dado passa a ser biométrico e sensível, e a análise da cláusula 2 muda - ver o apontamento.
- Os dados ficam no Brasil. Não há informação sobre transferência internacional.
- A operação é só no Brasil.

## 3. Análise cláusula a cláusula

### Cláusula 1 - Aceite

**Texto original**

> Ao clicar em "Criar conta", o usuário aceita integralmente estes Termos. A caixa de aceite virá pré-marcada para agilizar o cadastro.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

Caixa pré-marcada não produz aceite válido. São dois problemas distintos, e cada um basta sozinho.

No consumidor, o contrato de adesão só obriga se o consumidor teve oportunidade real de conhecer o conteúdo antes. Vincular o aceite ao clique em "Criar conta", com a caixa já marcada, elimina o momento em que o usuário decidiria - ele não aceita, apenas deixa de desmarcar.

Na proteção de dados o defeito é mais grave, porque consentimento é definido na lei como manifestação livre e inequívoca. Caixa pré-marcada não é nem uma coisa nem outra: a vontade não foi manifestada, foi presumida. E o ônus de provar que o consentimento foi obtido corretamente é do controlador, o que significa que a QuadraJá teria de demonstrar em juízo exatamente aquilo que o desenho da tela impede de demonstrar.

O motivo declarado - "para agilizar o cadastro" - agrava. Está escrito no próprio documento que a conveniência operacional prevaleceu sobre a escolha do usuário.

**Fundamento**

- Norma: CDC, art. 46
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`, confirmado EM DIA no relatório `STATUS-FONTES.md` de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 46. Os contratos que regulam as relações de consumo não obrigarão os consumidores, se não lhes for dada a oportunidade de tomar conhecimento prévio de seu conteúdo, ou se os respectivos instrumentos forem redigidos de modo a dificultar a compreensão de seu sentido e alcance.

- Norma: LGPD, art. 5º, XII, e art. 8º, §§ 2º e 3º
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 5º [...] XII - consentimento: manifestação livre, informada e inequívoca pela qual o titular concorda com o tratamento de seus dados pessoais para uma finalidade determinada;

> Art. 8º [...] § 2º Cabe ao controlador o ônus da prova de que o consentimento foi obtido em conformidade com o disposto nesta Lei.
> § 3º É vedado o tratamento de dados pessoais mediante vício de consentimento.

- Norma: Decreto nº 7.962/2013, art. 4º, I, III e IV
- Verificado em: `fontes/leis/05-comercio-eletronico-decreto-7962-2013.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 4º Para garantir o atendimento facilitado ao consumidor no comércio eletrônico, o fornecedor deverá:
> I - apresentar sumário do contrato antes da contratação, com as informações necessárias ao pleno exercício do direito de escolha do consumidor, enfatizadas as cláusulas que limitem direitos;
> [...] III - confirmar imediatamente o recebimento da aceitação da oferta;
> IV - disponibilizar o contrato ao consumidor em meio que permita sua conservação e reprodução, imediatamente após a contratação;

**Redação proposta**

> **1. Aceite**
>
> 1.1. Estes Termos ficam disponíveis para leitura integral antes do cadastro, em página de acesso livre, sem necessidade de criar conta.
>
> 1.2. Para criar conta, o usuário marca a caixa de aceite. A caixa não vem pré-marcada e o cadastro não se conclui sem ela.
>
> 1.3. Antes do aceite, o aplicativo exibe um resumo dos Termos com destaque para as cláusulas que limitam direitos do usuário, especialmente as regras de cancelamento e reembolso (cláusula 5) e de uso de imagem (cláusula 4).
>
> 1.4. Concluído o cadastro, a QuadraJá envia ao e-mail informado a confirmação do aceite e a cópia integral dos Termos aceitos, em formato que permita salvar e imprimir.
>
> 1.5. A QuadraJá registra data, hora e versão do documento aceito, e mantém esse registro enquanto durar a conta e pelo prazo de prescrição aplicável.

**O que muda na prática**

O aceite passa a ser um ato do usuário, e a empresa passa a ter prova dele. Hoje a QuadraJá não conseguiria demonstrar aceite de nada - nem dos Termos, nem do tratamento de dados. Com o registro de versão, ela consegue provar qual texto valia quando cada usuário se cadastrou, o que também resolve metade do problema da cláusula 7.

---

### Cláusula 2 - Cadastro

**Texto original**

> Para criar conta, o usuário informa nome completo, CPF, data de nascimento, telefone, e-mail, endereço residencial completo, foto de rosto e contato de emergência.
>
> Menores de 18 anos podem se cadastrar informando a própria data de nascimento.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

Dois problemas independentes.

**Coleta excessiva.** A LGPD limita o tratamento ao mínimo necessário para a finalidade. Para reservar uma quadra bastam nome, e-mail e telefone. O endereço residencial completo não tem função identificável em um app que não entrega nada em domicílio - foi coletado porque cabia no formulário, não porque serve a alguma coisa. O CPF se justifica na cobrança e na emissão de documento fiscal, não no cadastro em si, e deve ser pedido no momento do pagamento. O contato de emergência faz sentido para quem vai disputar torneio, não para quem só reserva quadra: é campo de inscrição, não de cadastro. Cada campo excedente é volume de dado que a empresa passa a ter de proteger, reter, corrigir e eliminar sem obter nada em troca.

A foto de rosto merece atenção separada. Como imagem de perfil, é dado pessoal comum e a análise acima resolve. Se em algum momento for usada para reconhecimento facial - conferência de identidade no check-in da quadra, por exemplo -, passa a ser dado biométrico, que a lei classifica como sensível e submete a regime próprio, com hipóteses legais mais estreitas. A premissa adotada nesta revisão é a de que não há reconhecimento facial. Se houver, esta cláusula precisa ser reescrita de novo.

**Menor de idade se cadastrando sozinho.** Aqui o problema não é só de proteção de dados, é de validade do contrato.

Menor de 16 anos é absolutamente incapaz para os atos da vida civil, e entre 16 e 18 é relativamente incapaz. Como a cláusula 5 prevê inscrição paga, o cadastro de um menor sem representação produz contrato nulo ou anulável - e quem suporta essa insegurança é a QuadraJá, que pode ter de devolver valores e desfazer inscrições já realizadas.

Na proteção de dados, o tratamento de dados de criança exige consentimento específico e em destaque de pelo menos um dos pais ou do responsável legal, e a lei impõe ao controlador o dever de fazer esforços razoáveis para verificar que o consentimento veio mesmo do responsável. Aceitar a data de nascimento digitada pelo próprio menor, sem nenhuma etapa adicional, não é esforço razoável - é ausência de esforço.

Há ainda o ECA Digital, em vigor desde 17 de março de 2026, regulamentado pelo Decreto nº 12.880/2026, em vigor desde 18 de março de 2026. Um aplicativo de torneios amadores de padel que a própria cláusula 4 admite ter menores participantes é serviço de acesso provável por crianças e adolescentes, e isso atrai deveres de informação, de supervisão parental e de mapeamento de risco.

Uma ressalva, para não ampliar o que a lei diz: o ECA Digital proíbe a autodeclaração de idade no art. 9º, § 1º, mas essa vedação alcança conteúdo impróprio, inadequado ou proibido para menores de 18 anos, definido no § 2º como material pornográfico ou outro vedado em lei. O mesmo vale para os arts. 17 a 19 do Decreto nº 12.880/2026, que tratam de conteúdo pornográfico, de produtos proibidos para menores e de redes sociais. Reserva de quadra de padel não se enquadra em nenhuma dessas hipóteses. Portanto **não** é correto dizer que o ECA Digital proíbe a autodeclaração neste app. O que torna a autodeclaração insuficiente aqui é a LGPD, art. 14, § 5º, combinada com a incapacidade civil do menor para contratar - fundamento diferente e mais estreito, mas suficiente.

**Fundamento**

- Norma: LGPD, art. 6º, III
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> III - necessidade: limitação do tratamento ao mínimo necessário para a realização de suas finalidades, com abrangência dos dados pertinentes, proporcionais e não excessivos em relação às finalidades do tratamento de dados;

- Norma: LGPD, art. 5º, II (definição de dado sensível)
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> II - dado pessoal sensível: dado pessoal sobre origem racial ou étnica, convicção religiosa, opinião política, filiação a sindicato ou a organização de caráter religioso, filosófico ou político, dado referente à saúde ou à vida sexual, dado genético ou biométrico, quando vinculado a uma pessoa natural;

- Norma: Código Civil, arts. 3º e 4º, I
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 3º São absolutamente incapazes de exercer pessoalmente os atos da vida civil os menores de 16 (dezesseis) anos.

> Art. 4º São incapazes, relativamente a certos atos ou à maneira de os exercer: I - os maiores de dezesseis e menores de dezoito anos;

- Norma: LGPD, art. 14, §§ 1º, 4º e 5º
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> § 1º O tratamento de dados pessoais de crianças deverá ser realizado com o consentimento específico e em destaque dado por pelo menos um dos pais ou pelo responsável legal.

> § 4º Os controladores não deverão condicionar a participação dos titulares de que trata o § 1º deste artigo em jogos, aplicações de internet ou outras atividades ao fornecimento de informações pessoais além das estritamente necessárias à atividade.

> § 5º O controlador deve realizar todos os esforços razoáveis para verificar que o consentimento a que se refere o § 1º deste artigo foi dado pelo responsável pela criança, consideradas as tecnologias disponíveis.

- Norma: Lei nº 15.211/2025 (ECA Digital), arts. 5º, 14, 16 e 17, e art. 41-A (vigência)
- Verificado em: `fontes/eca-digital/20-eca-digital-lei-15211-2025.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 5º Os produtos ou serviços de tecnologia da informação direcionados a crianças e a adolescentes ou de acesso provável por eles deverão observar os deveres de prevenção, de proteção, de informação e de segurança previstos neste Capítulo e nas Leis nºs 8.078, de 11 de setembro de 1990 (Código de Defesa do Consumidor), e 8.069, de 13 de julho de 1990 (Estatuto da Criança e do Adolescente) [...]

> Art. 41-A. Esta Lei entra em vigor em 17 de março de 2026. (Incluído pela Lei nº 15.352, de 2026)

**Redação proposta**

> **2. Cadastro e conta**
>
> 2.1. Para criar conta, o usuário informa nome, e-mail e telefone.
>
> 2.2. A QuadraJá solicita o CPF apenas quando houver pagamento, para emissão de documento fiscal, e a data de nascimento apenas para verificar a idade mínima e definir o fluxo aplicável a menores.
>
> 2.3. A foto de perfil é opcional. É usada apenas para identificação visual do usuário dentro do aplicativo e não é submetida a reconhecimento facial nem a qualquer tratamento biométrico.
>
> 2.4. O contato de emergência é solicitado apenas na inscrição em torneio, é opcional e é usado exclusivamente para acionamento em caso de emergência médica durante o evento.
>
> 2.5. Menores de 18 anos não criam conta própria. A conta é criada pelo pai, pela mãe ou pelo responsável legal, que se identifica, declara essa condição e responde pelo uso.
>
> 2.6. No cadastro de menor, o responsável dá consentimento específico e em destaque para o tratamento dos dados do menor, em etapa separada do aceite destes Termos, e a QuadraJá confirma a titularidade do contato informado antes de ativar a conta.
>
> 2.7. A QuadraJá mantém, em página de acesso livre e independente da contratação, informações sobre os dados que coleta de menores, as finalidades, os riscos, as medidas de segurança e as ferramentas de supervisão parental disponíveis.
>
> 2.8. O responsável pode, a qualquer momento e sem custo, consultar os dados do menor, corrigi-los, solicitar sua eliminação e encerrar a conta.

**O que muda na prática**

Sai da coleta o endereço residencial, e o CPF e o contato de emergência migram para o momento em que efetivamente servem. O ganho é duplo: menos exposição em caso de incidente e menos superfície de obrigação sobre dados que a empresa não usa.

No fluxo de menores a mudança é estrutural. Hoje o app aceita um adolescente de 15 anos digitando a própria data de nascimento e pagando uma inscrição - contrato que a família pode desfazer depois. Com a conta em nome do responsável, o contrato tem quem o assine validamente, o consentimento de dados tem de quem partir, e a empresa passa a cumprir os deveres de informação e supervisão parental do ECA Digital.

---

### Cláusula 3 - Dados pessoais

**Texto original**

> A QuadraJa poderá utilizar os dados coletados para as finalidades que julgar convenientes, incluindo compartilhamento com parceiros comerciais.
>
> Os dados serão mantidos por tempo indeterminado.
>
> O usuário autoriza desde já o envio de comunicações promocionais, sendo o aceite já assinalado no momento do cadastro.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

Os três parágrafos têm, cada um, um defeito próprio.

**"Finalidades que julgar convenientes"** é exatamente a autorização genérica que a LGPD declara nula. O princípio da finalidade exige propósitos legítimos, específicos, explícitos e informados ao titular, e proíbe tratamento posterior incompatível com eles. Uma cláusula que reserva ao controlador definir depois para que usará os dados não informa nada, e por isso não autoriza nada. O agravante é que ela não protege a empresa: como a autorização é nula, a QuadraJá fica sem base para os usos que realmente precisa fazer, inclusive os banais.

O **compartilhamento com "parceiros comerciais"** sem identificar quem são e para quê tem o mesmo defeito, com uma obrigação adicional descumprida: a lei exige informar o uso compartilhado e a respectiva finalidade.

**Retenção por tempo indeterminado** contraria o regime de término do tratamento. Os dados devem ser eliminados quando a finalidade se esgota, e a conservação depois disso só é admitida nas hipóteses fechadas do art. 16. "Indeterminado" não é prazo, é ausência de prazo - e transforma a base de dados em passivo permanente.

O **aceite promocional já assinalado** repete o vício da cláusula 1, agravado por acumular duas coisas distintas no mesmo clique. Publicidade não é necessária para prestar o serviço; é finalidade autônoma, e precisa de manifestação autônoma, separada do aceite dos Termos, com opção de recusa sem prejuízo do cadastro.

Falta, ainda, o essencial: a cláusula não indica a hipótese legal de cada tratamento, não informa os direitos do titular nem como exercê-los, e não identifica o encarregado.

**Fundamento**

- Norma: LGPD, art. 6º, I; art. 8º, §§ 3º e 4º; art. 9º, II, V e VII; arts. 15 e 16; art. 18; art. 41
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 6º [...] I - finalidade: realização do tratamento para propósitos legítimos, específicos, explícitos e informados ao titular, sem possibilidade de tratamento posterior de forma incompatível com essas finalidades;

> Art. 8º [...] § 4º O consentimento deverá referir-se a finalidades determinadas, e as autorizações genéricas para o tratamento de dados pessoais serão nulas.

> Art. 9º O titular tem direito ao acesso facilitado às informações sobre o tratamento de seus dados [...] II - forma e duração do tratamento, observados os segredos comercial e industrial; [...] V - informações acerca do uso compartilhado de dados pelo controlador e a finalidade; [...] VII - direitos do titular, com menção explícita aos direitos contidos no art. 18 desta Lei.

> Art. 15. O término do tratamento de dados pessoais ocorrerá nas seguintes hipóteses: I - verificação de que a finalidade foi alcançada ou de que os dados deixaram de ser necessários ou pertinentes ao alcance da finalidade específica almejada; II - fim do período de tratamento; [...]

> Art. 16. Os dados pessoais serão eliminados após o término de seu tratamento, no âmbito e nos limites técnicos das atividades, autorizada a conservação para as seguintes finalidades: I - cumprimento de obrigação legal ou regulatória pelo controlador; [...]

**Redação proposta**

> **3. Dados pessoais**
>
> 3.1. A QuadraJá é a controladora dos dados pessoais tratados no aplicativo. Os detalhes estão na Política de Privacidade, parte integrante destes Termos.
>
> 3.2. Os dados são tratados para as seguintes finalidades, e apenas para elas:
>
> | Finalidade | Dados | Hipótese legal |
> |---|---|---|
> | Criar e manter a conta | Nome, e-mail, telefone | Execução de contrato - art. 7º, V |
> | Reservar quadra e confirmar horário | Dados da conta e histórico de reservas | Execução de contrato - art. 7º, V |
> | Inscrever em torneio e organizar chaves | Dados da conta, data de nascimento, categoria | Execução de contrato - art. 7º, V |
> | Cobrar e emitir documento fiscal | CPF e dados da transação | Obrigação legal - art. 7º, II |
> | Acionar contato de emergência durante evento | Contato de emergência | Proteção da vida e da incolumidade física - art. 7º, VII |
> | Enviar comunicações promocionais | Nome e e-mail | Consentimento específico - art. 7º, I |
>
> 3.3. A QuadraJá não vende dados pessoais. O compartilhamento ocorre apenas com: [PREENCHER - relacionar processador de pagamento, provedor de hospedagem, serviço de e-mail e demais operadores, com nome e finalidade de cada um].
>
> 3.4. Prazos de retenção:
>
> | Dado | Prazo |
> |---|---|
> | Dados da conta | Enquanto a conta existir, e por 6 meses após o encerramento |
> | Registros de acesso à aplicação | 6 meses, conforme o art. 15 do Marco Civil da Internet |
> | Dados fiscais e de pagamento | 5 anos, conforme a legislação fiscal aplicável |
> | Registro de aceite dos Termos | Enquanto a conta existir, e pelo prazo de prescrição aplicável |
> | Contato de emergência | Até 30 dias após o encerramento do torneio |
>
> Vencido o prazo, os dados são eliminados ou anonimizados.
>
> 3.5. As comunicações promocionais dependem de consentimento específico, dado em caixa própria, não pré-marcada, separada do aceite destes Termos. Recusar não impede o cadastro nem restringe qualquer funcionalidade. O consentimento pode ser revogado a qualquer momento, de forma gratuita e facilitada, em link presente em toda mensagem e nas configurações da conta.
>
> 3.6. O usuário pode, a qualquer momento e sem custo, pedir confirmação da existência de tratamento, acesso, correção, anonimização, bloqueio ou eliminação de dados desnecessários ou excessivos, portabilidade, informação sobre compartilhamento e revogação do consentimento. O pedido é feito em [PREENCHER - canal e endereço] e respondido em até 15 dias.
>
> 3.7. Encarregado pelo tratamento de dados pessoais: [PREENCHER - nome e e-mail].

**O que muda na prática**

Cada tratamento passa a ter finalidade nomeada, base legal e prazo. Isso não é formalidade: é o que permite responder a um pedido de titular ou a um questionamento da ANPD sem precisar reconstruir a operação do zero. A tabela da 3.2 é, na prática, o esqueleto do registro de operações de tratamento.

O marketing sai do pacote e passa a ter caixa própria. A empresa perde alguns opt-ins e ganha uma base de contatos que pode efetivamente usar.

---

### Cláusula 4 - Uso de imagem

**Texto original**

> O usuário cede à QuadraJa, de forma gratuita, universal, definitiva, irrevogável e irrestrita, o direito de uso de sua imagem, voz e nome, para qualquer finalidade, inclusive comercial e publicitária, em qualquer mídia, sem limite de prazo ou território.
>
> A cessão abrange também a imagem de menores participantes, cuja inscrição no torneio pelo responsável já configura autorização plena.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

É a cláusula mais problemática do documento, e a mais provável de gerar ação individual.

A imagem é direito da personalidade, protegido na Constituição, com indenização assegurada em caso de violação. O Código Civil condiciona à autorização o uso da imagem que se destine a fins comerciais, e estabelece que os direitos da personalidade são irrenunciáveis e que seu exercício não pode sofrer limitação voluntária, salvo previsão legal. Uma cessão descrita como universal, definitiva, irrevogável e irrestrita, para qualquer finalidade, sem limite de prazo ou território, é precisamente a limitação voluntária ilimitada que o art. 11 afasta.

A isso se acrescentam dois vícios de consumo e um de proteção de dados. A cláusula impõe renúncia de direito em contrato de adesão e coloca o consumidor em desvantagem exagerada. E, como imagem, voz e nome são dados pessoais, a autorização em branco esbarra de novo na nulidade das autorizações genéricas.

A parte sobre menores é pior ainda, por confundir dois atos que não se confundem. Inscrever o filho num torneio é autorizar a participação. Não é autorizar que a imagem dele apareça em campanha publicitária. São manifestações distintas, com objetos distintos, e o ECA protege expressamente a preservação da imagem da criança e do adolescente. Tratar uma como se contivesse a outra é presumir consentimento onde a lei exige manifestação específica - e, tratando-se de menor, sob o princípio do melhor interesse.

A cláusula também custa caro em termos práticos. A QuadraJá não precisa de cessão perpétua e universal para operar. Ela precisa de duas coisas: registrar e divulgar os torneios, e usar algumas imagens em material de divulgação. A primeira se resolve com autorização delimitada; a segunda, com autorização específica, obtida na hora, de quem for aparecer em destaque. Ao pedir tudo, a cláusula perde as duas.

**Fundamento**

- Norma: Constituição Federal, art. 5º, X
- Verificado em: `fontes/leis/00-constituicao-federal.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> X - são invioláveis a intimidade, a vida privada, a honra e a imagem das pessoas, assegurado o direito a indenização pelo dano material ou moral decorrente de sua violação;

- Norma: Código Civil, arts. 11 e 20
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 11. Com exceção dos casos previstos em lei, os direitos da personalidade são intransmissíveis e irrenunciáveis, não podendo o seu exercício sofrer limitação voluntária.

> Art. 20. Salvo se autorizadas, ou se necessárias à administração da justiça ou à manutenção da ordem pública, a divulgação de escritos, a transmissão da palavra, ou a publicação, a exposição ou a utilização da imagem de uma pessoa poderão ser proibidas, a seu requerimento e sem prejuízo da indenização que couber, se lhe atingirem a honra, a boa fama ou a respeitabilidade, ou se se destinarem a fins comerciais.

- Norma: CDC, art. 51, I e IV
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 51. São nulas de pleno direito, entre outras, as cláusulas contratuais relativas ao fornecimento de produtos e serviços que:
> I - impossibilitem, exonerem ou atenuem a responsabilidade do fornecedor por vícios de qualquer natureza dos produtos e serviços ou impliquem renúncia ou disposição de direitos. [...]
> IV - estabeleçam obrigações consideradas iníquas, abusivas, que coloquem o consumidor em desvantagem exagerada, ou sejam incompatíveis com a boa-fé ou a eqüidade;

- Norma: ECA, art. 17
- Verificado em: `fontes/leis/08-eca-lei-8069-1990.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 17. O direito ao respeito consiste na inviolabilidade da integridade física, psíquica e moral da criança e do adolescente, abrangendo a preservação da imagem, da identidade, da autonomia, dos valores, idéias e crenças, dos espaços e objetos pessoais.

- Norma: LGPD, art. 8º, § 4º, e art. 14, § 1º
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`
- Data da verificação: 2026-08-21

**Redação proposta**

> **4. Uso de imagem**
>
> 4.1. A QuadraJá registra os torneios em foto e vídeo para fins de cobertura do evento, divulgação institucional e publicação de resultados.
>
> 4.2. Ao se inscrever em torneio, o usuário autoriza o uso de sua imagem, voz e nome exclusivamente nesse contexto, nos canais oficiais da QuadraJá e no material de cobertura do próprio evento, pelo prazo de 2 (dois) anos contados do encerramento do torneio, em território nacional.
>
> 4.3. Uso publicitário, uso em campanha paga, uso associado a patrocinador e uso em destaque individual dependem de autorização específica e separada, solicitada ao usuário no momento em que o uso for pretendido, com indicação da peça, do canal, do prazo e da existência ou não de remuneração. A recusa não afeta a participação no torneio nem qualquer outro direito do usuário.
>
> 4.4. O usuário pode solicitar, a qualquer momento, a retirada de imagem em que apareça identificável. A QuadraJá atende em até 15 dias nos canais sob seu controle. Material já impresso ou já distribuído a terceiros fica ressalvado quanto a exemplares fora de seu alcance, e a QuadraJá não os reproduz novamente.
>
> 4.5. Imagem de menor de 18 anos:
>
> a) depende de autorização específica do pai, da mãe ou do responsável legal, dada em documento próprio, distinto da inscrição e do aceite destes Termos;
>
> b) a inscrição do menor no torneio, por si só, não autoriza uso de imagem;
>
> c) a autorização pode ser revogada a qualquer tempo, com o mesmo efeito previsto na cláusula 4.4;
>
> d) a QuadraJá não usa imagem de menor em publicidade, em campanha paga ou em peça associada a patrocinador, ainda que haja autorização do responsável.
>
> 4.6. A QuadraJá não cede nem licencia a terceiros a imagem dos usuários, salvo autorização específica na forma da cláusula 4.3.

**O que muda na prática**

A cessão perpétua e universal vira autorização com objeto, prazo e território definidos, o que a torna exigível. O uso publicitário, que é o que gera ação, passa a ser pedido na hora e a quem for aparecer.

Para menores, a inscrição deixa de valer como autorização de imagem, e a alínea "d" fecha a exposição comercial de criança - decisão mais restritiva do que a lei estritamente exige, e deliberada: o ganho publicitário de usar imagem de menor não compensa o risco de uma ação com Ministério Público no polo ativo.

---

### Cláusula 5 - Pagamentos e cancelamento

**Texto original**

> A inscrição em torneios é paga no ato. O valor exibido na tela de inscrição não inclui a taxa de serviço, informada apenas na confirmação.
>
> Não haverá devolução de valores em nenhuma hipótese, ainda que o torneio seja cancelado ou remarcado pela organização.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

**Taxa revelada só na confirmação.** O consumidor tem direito a informação clara e correta sobre o preço, e a oferta deve ser precisa e ostensiva. No comércio eletrônico a regra é ainda mais direta: qualquer despesa adicional ou acessória tem de vir discriminada no preço, em local de destaque. Exibir um valor na tela de inscrição e outro na confirmação é prática enganosa por omissão, com risco de sanção administrativa dos órgãos de defesa do consumidor além do risco individual.

**Não devolução "em nenhuma hipótese".** Cláusula nula, e por dois caminhos. O CDC anula expressamente a cláusula que subtrai ao consumidor a opção de reembolso da quantia já paga. E, quando o fornecedor não cumpre a oferta - torneio cancelado é exatamente isso -, o consumidor pode rescindir e receber de volta o que pagou, com correção e perdas e danos, à sua livre escolha.

A assimetria salta à vista: a cláusula 7 dá à QuadraJá o direito de mudar tudo a qualquer momento, e esta cláusula 5 nega ao usuário devolução mesmo quando a falha é da empresa. Essa combinação é o retrato do art. 51, IV.

**Falta o direito de arrependimento.** Contratação por aplicativo ocorre fora do estabelecimento comercial, e o CDC dá 7 dias para desistir, com devolução imediata e corrigida dos valores pagos. O documento não menciona. Ver a pendência nº 1 quanto à aplicação desse prazo a evento com data marcada.

**Fundamento**

- Norma: CDC, art. 6º, III, e art. 31
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 6º São direitos básicos do consumidor: [...] III - a informação adequada e clara sobre os diferentes produtos e serviços, com especificação correta de quantidade, características, composição, qualidade, tributos incidentes e preço, bem como sobre os riscos que apresentem;

> Art. 31. A oferta e apresentação de produtos ou serviços devem assegurar informações corretas, claras, precisas, ostensivas e em língua portuguesa sobre suas características, qualidades, quantidade, composição, preço, garantia, prazos de validade e origem, entre outros dados, bem como sobre os riscos que apresentam à saúde e segurança dos consumidores.

- Norma: Decreto nº 7.962/2013, art. 2º, IV e VI
- Verificado em: `fontes/leis/05-comercio-eletronico-decreto-7962-2013.html`
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 2º Os sítios eletrônicos ou demais meios eletrônicos utilizados para oferta ou conclusão de contrato de consumo devem disponibilizar, em local de destaque e de fácil visualização, as seguintes informações: [...] IV - discriminação, no preço, de quaisquer despesas adicionais ou acessórias, tais como as de entrega ou seguros; [...] VI - informações claras e ostensivas a respeito de quaisquer restrições à fruição da oferta.

- Norma: CDC, art. 51, II e IV; art. 35, III; art. 49
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 51. São nulas de pleno direito [...] II - subtraiam ao consumidor a opção de reembolso da quantia já paga, nos casos previstos neste código;

> Art. 35. Se o fornecedor de produtos ou serviços recusar cumprimento à oferta, apresentação ou publicidade, o consumidor poderá, alternativamente e à sua livre escolha: [...] III - rescindir o contrato, com direito à restituição de quantia eventualmente antecipada, monetariamente atualizada, e a perdas e danos.

> Art. 49. O consumidor pode desistir do contrato, no prazo de 7 dias a contar de sua assinatura ou do ato de recebimento do produto ou serviço, sempre que a contratação de fornecimento de produtos e serviços ocorrer fora do estabelecimento comercial, especialmente por telefone ou a domicílio.
> Parágrafo único. Se o consumidor exercitar o direito de arrependimento previsto neste artigo, os valores eventualmente pagos, a qualquer título, durante o prazo de reflexão, serão devolvidos, de imediato, monetariamente atualizados.

**Redação proposta**

> **5. Pagamentos, cancelamento e reembolso**
>
> 5.1. O preço da inscrição é exibido com todos os valores já somados, incluída a taxa de serviço, discriminados item a item antes da confirmação do pagamento. Nenhum valor é acrescido após a tela de confirmação.
>
> 5.2. **Arrependimento.** O usuário pode desistir da inscrição em até 7 (sete) dias corridos contados da contratação, sem precisar justificar, e recebe de volta a integralidade do valor pago, com correção monetária, no mesmo meio de pagamento, em até 10 dias. Se o torneio começar antes de esgotado esse prazo, a desistência pode ser exercida até o início do torneio.
>
> 5.3. **Cancelamento pelo usuário fora do prazo de arrependimento.**
>
> | Antecedência em relação ao início do torneio | Devolução |
> |---|---|
> | Mais de [PREENCHER] dias | 100% |
> | Entre [PREENCHER] e [PREENCHER] dias | [PREENCHER]% |
> | Menos de [PREENCHER] dias | [PREENCHER]% |
>
> A retenção corresponde a custos já incorridos com a organização e é informada ao usuário antes da confirmação do cancelamento.
>
> 5.4. **Cancelamento pela organização.** Cancelado o torneio, o usuário recebe 100% do valor pago, com correção monetária, em até 10 dias, sem necessidade de solicitação. A regra vale qualquer que seja o motivo, inclusive caso fortuito e força maior.
>
> 5.5. **Remarcação pela organização.** Alterada a data, o local ou a categoria, o usuário escolhe entre manter a inscrição na nova configuração ou cancelar e receber 100% do valor pago, com correção, em até 10 dias. A QuadraJá comunica a alteração com a maior antecedência possível e concede prazo não inferior a 5 dias para a escolha.
>
> 5.6. **Não comparecimento.** O usuário que não comparecer sem cancelar previamente não tem direito a devolução, ressalvado motivo de saúde comprovado por atestado, hipótese em que a QuadraJá devolve [PREENCHER]% do valor.

**O que muda na prática**

O preço passa a ser um só, o que elimina o principal gerador de reclamação em Procon nesse tipo de operação.

O reembolso deixa de ser "nunca" e passa a ter regra. A empresa não perde dinheiro com isso - ela ganha previsibilidade. Hoje, com uma cláusula nula, qualquer cancelamento vira negociação caso a caso e, se judicializar, a devolução é integral com correção e possíveis perdas e danos. Com a escala da 5.3, a retenção é conhecida, justificada por custo real e defensável.

---

### Cláusula 6 - Responsabilidade

**Texto original**

> A QuadraJa não se responsabiliza por qualquer dano, de qualquer natureza, sofrido pelo usuário, inclusive lesões físicas ocorridas durante as partidas, ainda que decorrentes de falha na manutenção da quadra.
>
> O usuário renuncia a qualquer indenização.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

A cláusula é nula, e a redação torna a nulidade mais evidente do que o normal, porque exclui expressamente a responsabilidade justamente na hipótese em que ela é mais clara: lesão física decorrente de falha de manutenção da quadra.

O CDC veda de forma direta a estipulação de cláusula que impossibilite, exonere ou atenue a obrigação de indenizar, e anula a cláusula que exonere responsabilidade do fornecedor ou implique renúncia de direitos. O fornecedor de serviços responde independentemente de culpa por defeito na prestação, e serviço defeituoso é aquele que não oferece a segurança que o consumidor dele pode esperar. Quadra mal mantida é o exemplo de manual.

A renúncia a indenização acrescenta o vício do art. 11 do Código Civil: integridade física é direito da personalidade, e o usuário não pode renunciar previamente à reparação por sua violação.

Um ponto de desenho, não de lei: a cláusula tenta resolver com texto um problema que é operacional. Se há risco de lesão em quadra, o que reduz exposição é inspeção documentada, sinalização, protocolo de emergência e seguro - não uma frase dizendo que a empresa não responde. A frase não funciona, e ainda serve de prova de que a empresa conhecia o risco.

**Fundamento**

- Norma: CDC, art. 25
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 25. É vedada a estipulação contratual de cláusula que impossibilite, exonere ou atenue a obrigação de indenizar prevista nesta e nas seções anteriores.

- Norma: CDC, art. 14, caput e §§ 1º e 3º
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 14. O fornecedor de serviços responde, independentemente da existência de culpa, pela reparação dos danos causados aos consumidores por defeitos relativos à prestação dos serviços, bem como por informações insuficientes ou inadequadas sobre sua fruição e riscos.
> § 1° O serviço é defeituoso quando não fornece a segurança que o consumidor dele pode esperar [...]
> § 3° O fornecedor de serviços só não será responsabilizado quando provar: I - que, tendo prestado o serviço, o defeito inexiste; II - a culpa exclusiva do consumidor ou de terceiro.

- Norma: CDC, art. 51, I
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`
- Data da verificação: 2026-08-21

- Norma: Código Civil, art. 11
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`
- Data da verificação: 2026-08-21

**Redação proposta**

> **6. Responsabilidade e segurança**
>
> 6.1. A QuadraJá responde pelos danos decorrentes de defeito na prestação de seus serviços, nos termos do Código de Defesa do Consumidor. Nenhuma disposição destes Termos exclui, limita ou atenua essa responsabilidade.
>
> 6.2. A QuadraJá mantém as quadras sob sua administração em condições adequadas de uso e segurança, realiza inspeção periódica e registra o resultado. Constatado risco, a quadra é interditada até a correção, e as reservas afetadas são remarcadas ou reembolsadas integralmente, à escolha do usuário.
>
> 6.3. A QuadraJá informa aos usuários os riscos inerentes à prática do padel e mantém, nos locais de jogo, sinalização de segurança e protocolo de atendimento de emergência.
>
> 6.4. Quando a quadra for de terceiro apenas intermediada pelo aplicativo, a QuadraJá informa essa condição ao usuário antes da reserva, com a identificação do responsável pelo espaço. A informação não afasta a responsabilidade solidária da QuadraJá perante o usuário, nos termos da lei.
>
> 6.5. O usuário se compromete a usar equipamento adequado, respeitar a sinalização e comunicar imediatamente qualquer defeito que identifique na quadra ou nos equipamentos. O descumprimento é considerado na apuração da responsabilidade, nos limites do art. 14, § 3º, do Código de Defesa do Consumidor.
>
> 6.6. A prática esportiva envolve risco inerente de lesão, mesmo em condições regulares de segurança. A QuadraJá recomenda avaliação médica prévia e não responde por condição de saúde preexistente não informada, o que não afasta sua responsabilidade por defeito do serviço.
>
> 6.7. Cobertura de seguro: [PREENCHER - informar se há seguro de acidentes pessoais para participantes de torneio, e qual a cobertura].

**O que muda na prática**

A empresa troca uma cláusula nula por um conjunto de obrigações que efetivamente reduzem exposição. A 6.2 é a mais relevante: inspeção registrada é prova de que a manutenção foi feita, e é isso que se discute quando alguém se machuca. A cláusula original não produzia prova nenhuma.

A 6.4 resolve uma ambiguidade do documento original, que nunca esclarece se a QuadraJá opera ou apenas intermedeia as quadras. Nas duas hipóteses ela responde perante o usuário, mas informar quem é o responsável pelo espaço preserva o direito de regresso.

---

### Cláusula 7 - Alterações

**Texto original**

> A QuadraJa poderá alterar estes Termos a qualquer momento, sem aviso, passando a nova versão a valer retroativamente.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

Três defeitos em uma linha.

Alteração unilateral do conteúdo do contrato depois da celebração é hipótese expressa de nulidade no CDC. Efeito retroativo agrava: atinge ato jurídico perfeito, protegido na Constituição, e significaria que uma reserva feita e paga sob determinadas regras poderia ser regida por regras editadas depois. Ausência de aviso completa o quadro, e ainda descumpre a obrigação específica da LGPD de informar o titular, com destaque, quando muda informação sobre o tratamento, facultando a revogação do consentimento.

Há também um efeito prático inverso ao pretendido. Uma cláusula assim, além de nula, enfraquece todo o resto do documento: se os Termos podem mudar a qualquer momento sem aviso, fica difícil para a empresa sustentar depois que o usuário aceitou uma versão específica. É por isso que o registro de versão da cláusula 1.5 importa tanto.

**Fundamento**

- Norma: CDC, art. 51, XIII
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> XIII - autorizem o fornecedor a modificar unilateralmente o conteúdo ou a qualidade do contrato, após sua celebração;

- Norma: Constituição Federal, art. 5º, XXXVI
- Verificado em: `fontes/leis/00-constituicao-federal.html`
- Data da verificação: 2026-08-21
- Transcrição:

> XXXVI - a lei não prejudicará o direito adquirido, o ato jurídico perfeito e a coisa julgada;

- Norma: LGPD, art. 8º, § 6º, e art. 9º, § 2º
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> § 6º Em caso de alteração de informação referida nos incisos I, II, III ou V do art. 9º desta Lei, o controlador deverá informar ao titular, com destaque de forma específica do teor das alterações, podendo o titular, nos casos em que o seu consentimento é exigido, revogá-lo caso discorde da alteração.

**Redação proposta**

> **7. Alterações destes Termos**
>
> 7.1. A QuadraJá pode alterar estes Termos para adequá-los a mudança na legislação, na operação ou nos serviços oferecidos.
>
> 7.2. A alteração é comunicada ao usuário por e-mail e por aviso no aplicativo com, no mínimo, 30 (trinta) dias de antecedência da entrada em vigor. A comunicação destaca especificamente o que mudou.
>
> 7.3. A nova versão vale apenas para o período posterior à sua entrada em vigor. Reservas e inscrições já contratadas continuam regidas pela versão vigente na data da contratação.
>
> 7.4. O usuário que não concordar com a alteração pode encerrar a conta, sem custo, até a data de entrada em vigor, e recebe de volta os valores referentes a serviços contratados e ainda não prestados.
>
> 7.5. Quando a alteração envolver tratamento de dados pessoais sujeito a consentimento, a QuadraJá informa o teor da mudança com destaque e colhe novo consentimento. A recusa não afeta os serviços que não dependam daquele tratamento.
>
> 7.6. A QuadraJá mantém as versões anteriores destes Termos disponíveis para consulta, com a respectiva data de vigência.

**O que muda na prática**

O aviso prévio de 30 dias com direito de saída é o que torna a alteração unilateral defensável: o usuário tem escolha real.

A 7.3 e a 7.6, somadas ao registro de aceite da cláusula 1.5, dão à empresa algo que hoje ela não tem - a capacidade de provar, em qualquer discussão futura, qual texto valia para aquele usuário naquela data.

---

### Cláusula 8 - Segurança

**Texto original**

> A QuadraJa emprega medidas de segurança e não responde por incidentes de qualquer natureza envolvendo os dados dos usuários.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

A cláusula tenta afastar por contrato uma responsabilidade que a LGPD estabelece por lei e cujas hipóteses de exclusão são fechadas. O controlador que causa dano em violação à legislação de proteção de dados é obrigado a repará-lo, e só se exime se provar que não realizou o tratamento, que não houve violação da lei, ou que o dano decorreu de culpa exclusiva do titular ou de terceiro. Cláusula contratual não é uma quarta hipótese. No mesmo sentido, o art. 25 do CDC veda a estipulação que exonere a obrigação de indenizar.

A lei ainda fecha o caminho por outro lado. O art. 44 define como irregular o tratamento que não fornece a segurança que o titular dele pode esperar, e seu parágrafo único responsabiliza pelos danos quem deixou de adotar as medidas de segurança do art. 46 e com isso deu causa ao prejuízo. É a resposta direta a uma cláusula que afirma empregar medidas de segurança e, no mesmo período, nega responder pelo que delas decorrer.

Falta também a obrigação que a cláusula deveria trazer e não traz: comunicar à ANPD e ao titular o incidente de segurança que possa acarretar risco ou dano relevante. O documento não menciona incidente nenhum, exceto para dizer que a empresa não responde por eles.

"Emprega medidas de segurança", sem dizer quais, também não cumpre o dever de transparência nem serve de prova. Na avaliação da gravidade de um incidente, a ANPD considera a comprovação de que foram adotadas medidas técnicas adequadas - e comprovação exige descrição.

**Fundamento**

- Norma: LGPD, arts. 42 e 43
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 42. O controlador ou o operador que, em razão do exercício de atividade de tratamento de dados pessoais, causar a outrem dano patrimonial, moral, individual ou coletivo, em violação à legislação de proteção de dados pessoais, é obrigado a repará-lo.

> Art. 43. Os agentes de tratamento só não serão responsabilizados quando provarem: I - que não realizaram o tratamento de dados pessoais que lhes é atribuído; II - que, embora tenham realizado o tratamento de dados pessoais que lhes é atribuído, não houve violação à legislação de proteção de dados; ou III - que o dano é decorrente de culpa exclusiva do titular dos dados ou de terceiro.

- Norma: LGPD, art. 48
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 48. O controlador deverá comunicar à autoridade nacional e ao titular a ocorrência de incidente de segurança que possa acarretar risco ou dano relevante aos titulares.

- Norma: LGPD, arts. 44 e 46
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 44. O tratamento de dados pessoais será irregular quando deixar de observar a legislação ou quando não fornecer a segurança que o titular dele pode esperar, consideradas as circunstâncias relevantes, entre as quais: I - o modo pelo qual é realizado; II - o resultado e os riscos que razoavelmente dele se esperam; III - as técnicas de tratamento de dados pessoais disponíveis à época em que foi realizado.
> Parágrafo único. Responde pelos danos decorrentes da violação da segurança dos dados o controlador ou o operador que, ao deixar de adotar as medidas de segurança previstas no art. 46 desta Lei, der causa ao dano.

> Art. 46. Os agentes de tratamento devem adotar medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.
> [...] § 2º As medidas de que trata o caput deste artigo deverão ser observadas desde a fase de concepção do produto ou do serviço até a sua execução.

- Norma: Resolução CD/ANPD nº 15/2024 (comunicação de incidente de segurança)
- Verificado em: `fontes/anpd/41-resolucao-anpd-15-2024-incidentes.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21

- Norma: LGPD, art. 6º, VII e VIII; CDC, art. 25
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html` e `fontes/leis/02-cdc-lei-8078-1990-compilado.html`
- Data da verificação: 2026-08-21

**Redação proposta**

> **8. Segurança da informação e incidentes**
>
> 8.1. A QuadraJá adota medidas técnicas e administrativas para proteger os dados pessoais, entre elas: criptografia dos dados em trânsito e em repouso, controle de acesso por perfil com o mínimo de privilégio necessário, autenticação dos administradores em duas etapas, registro de auditoria dos acessos a dados pessoais, backup periódico com teste de restauração e revisão periódica das permissões.
>
> 8.2. A QuadraJá responde pelos danos causados por tratamento de dados pessoais em desconformidade com a legislação, nos termos dos arts. 42 a 44 da Lei nº 13.709/2018. Nenhuma disposição destes Termos afasta essa responsabilidade.
>
> 8.3. Ocorrido incidente de segurança que possa acarretar risco ou dano relevante, a QuadraJá comunica à Autoridade Nacional de Proteção de Dados e aos titulares afetados, no prazo e na forma da Resolução CD/ANPD nº 15/2024, informando a natureza dos dados atingidos, os riscos envolvidos e as medidas adotadas para reverter ou mitigar os efeitos.
>
> 8.4. A QuadraJá mantém registro interno dos incidentes de segurança, ainda que não sujeitos a comunicação, e o disponibiliza à autoridade quando requisitado.
>
> 8.5. O usuário é responsável por manter a confidencialidade de suas credenciais e deve comunicar imediatamente à QuadraJá qualquer uso não autorizado de sua conta.

**O que muda na prática**

A cláusula deixa de ser uma tentativa de blindagem sem efeito e passa a ser a descrição das medidas efetivamente adotadas - que é o que a empresa vai precisar apresentar se um incidente acontecer.

A 8.1 é um compromisso público, e cada item precisa corresponder ao que o sistema realmente faz. Item declarado e não implementado é pior do que item ausente, porque vira prova contra a empresa. A lista deve ser conferida com a equipe técnica antes da publicação.

---

### Cláusula 9 - Foro

**Texto original**

> Fica eleito o foro da comarca da sede da QuadraJa para dirimir qualquer controvérsia, com renúncia expressa a qualquer outro.

**Classificação:** FATO LEGAL

**Risco:** Médio

**Apontamento**

Em contrato entre empresas, eleição de foro é cláusula comum e válida. Em relação de consumo não se sustenta contra o consumidor: o CDC assegura que a ação de responsabilidade civil contra o fornecedor pode ser proposta no domicílio do autor, e anula a cláusula que coloque o consumidor em desvantagem exagerada ou que condicione ou limite de qualquer forma o acesso ao Judiciário. Obrigar um usuário a litigar na comarca da sede da empresa, possivelmente a centenas de quilômetros, é limitação de acesso.

O risco é médio, e não alto, porque o efeito prático é limitado: a cláusula simplesmente não produz efeito contra o consumidor, e o juízo do domicílio dele processa a ação. Ela não amplia a exposição da empresa como as anteriores - apenas não serve para nada, e sinaliza um documento redigido sem considerar o regime do consumidor.

Há também um problema formal: a cláusula remete à "comarca da sede da QuadraJá" sem que o documento identifique a empresa em lugar nenhum. Falta razão social, CNPJ e endereço - ver seção 4.

**Fundamento**

- Norma: CDC, art. 101, I
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Transcrição:

> Art. 101. Na ação de responsabilidade civil do fornecedor de produtos e serviços, sem prejuízo do disposto nos Capítulos I e II deste título, serão observadas as seguintes normas: I - a ação pode ser proposta no domicílio do autor;

- Norma: CDC, art. 51, IV e XVII
- Verificado em: `fontes/leis/02-cdc-lei-8078-1990-compilado.html`
- Data da verificação: 2026-08-21
- Transcrição:

> XVII - condicionem ou limitem de qualquer forma o acesso aos órgãos do Poder Judiciário; (Incluído pela Lei nº 14.181, de 2021)

**Redação proposta**

> **9. Atendimento, solução de conflitos e foro**
>
> 9.1. Antes de recorrer ao Judiciário, o usuário pode procurar o atendimento da QuadraJá em [PREENCHER - e-mail e telefone], que responde em até [PREENCHER] dias úteis. O uso desse canal é uma faculdade e não condiciona nem restringe o acesso a qualquer outra via.
>
> 9.2. A QuadraJá também atende pela plataforma consumidor.gov.br e pelos órgãos de defesa do consumidor.
>
> 9.3. Estes Termos são regidos pela lei brasileira.
>
> 9.4. O usuário consumidor pode propor ação no foro de seu domicílio, conforme o art. 101, I, do Código de Defesa do Consumidor. Para as demais hipóteses, fica eleito o foro da comarca de [PREENCHER - cidade da sede].

**O que muda na prática**

A cláusula passa a refletir o que aconteceria de qualquer forma, o que é melhor do que uma redação que promete à empresa uma proteção inexistente. O canal prévio de atendimento da 9.1 é o item de valor real: boa parte das ações de consumo nasce de reclamação não respondida.

---

## 4. Cláusulas ausentes

| Tema | Por quê | Fundamento | Severidade |
|---|---|---|---|
| Identificação do fornecedor - razão social, CNPJ, endereço físico e eletrônico | O documento não identifica a empresa em nenhum ponto, embora a cláusula 9 remeta à sua sede. É obrigação expressa no comércio eletrônico. | Decreto nº 7.962/2013, art. 2º, I e II - `fontes/leis/05-comercio-eletronico-decreto-7962-2013.html` | Alta |
| Política de Privacidade | A cláusula 3 não substitui a política. A LGPD exige informação clara e ostensiva sobre finalidade, duração, controlador, contato, compartilhamento e direitos. | LGPD, art. 9º - `fontes/leis/03-lgpd-lei-13709-2018-compilado.html` | Alta |
| Encarregado pelo tratamento de dados | Não há indicação de encarregado nem canal para o titular. | LGPD, art. 41; Resolução CD/ANPD nº 18/2024 - `fontes/anpd/40-resolucao-anpd-18-2024-encarregado.html` | Alta |
| Canal de atendimento eletrônico | Obrigação específica do comércio eletrônico, para dúvida, reclamação, suspensão e cancelamento. | Decreto nº 7.962/2013, art. 4º, V | Alta |
| Direito de arrependimento | Tratado na redação proposta da cláusula 5.2, mas ausente do documento original. | CDC, art. 49 | Alta |
| Regulamento do torneio e critérios esportivos | Elegibilidade, categorias, formato, classificação, penalidades e premiação não são tratados. O documento cobra inscrição em torneio sem dizer que torneio é. | CDC, art. 31 (informação sobre o serviço ofertado) | Alta |
| Supervisão parental e informação a responsáveis | App de acesso provável por menores deve oferecer ferramentas de supervisão parental e informação em local de acesso livre. | Lei nº 15.211/2025, arts. 16 e 17 - `fontes/eca-digital/20-eca-digital-lei-15211-2025.html` | Alta |
| Compartilhamento de dados e transferência internacional | Não há informação sobre operadores, hospedagem ou eventual transferência para fora do Brasil. | LGPD, art. 33; Resolução CD/ANPD nº 19/2024 - `fontes/anpd/42-resolucao-anpd-19-2024-transferencia-internacional.html` | Média |
| Guarda de registros de acesso à aplicação | O provedor de aplicação deve manter registros de acesso por 6 meses, sob sigilo. Reflete no prazo de retenção da cláusula 3.4. | Marco Civil da Internet, art. 15 - `fontes/leis/04-marco-civil-internet-lei-12965-2014.html` | Média |
| Propriedade intelectual e conteúdo do usuário | Não há disposição sobre titularidade da plataforma, marca, nem sobre conteúdo publicado pelo usuário. | Lei nº 9.610/1998 e Lei nº 9.609/1998 - `fontes/leis/07-direitos-autorais-9610-1998.html` | Média |
| Conduta do usuário e encerramento da conta pela QuadraJá | Não há regra de conduta nem hipóteses e procedimento de suspensão. Sem isso, a empresa não tem base para excluir usuário problemático. | CDC, art. 51, XI (o direito de cancelar deve ser recíproco) | Média |
| Cookies e tecnologias de rastreamento | Não tratado. Aplicável se houver site ou rastreamento no aplicativo. | Guia Orientativo da ANPD sobre Cookies - `fontes/anpd/31-guia-cookies.pdf` | Média |

## 5. Campos a preencher

Dados que dependem da empresa e não foram fornecidos. O arquivo `dados-empresa.md` não existe na instalação da skill, portanto nada foi presumido.

- [ ] `[PREENCHER]` - Razão social, CNPJ, endereço físico e endereço eletrônico da QuadraJá (preâmbulo e cláusula 9.4).
- [ ] `[PREENCHER]` - Relação dos operadores com quem há compartilhamento: processador de pagamento, hospedagem, serviço de e-mail, ferramenta de analytics, com nome e finalidade de cada um (cláusula 3.3).
- [ ] `[PREENCHER]` - Canal e endereço para exercício dos direitos do titular (cláusula 3.6).
- [ ] `[PREENCHER]` - Nome e e-mail do encarregado pelo tratamento de dados pessoais (cláusula 3.7).
- [ ] `[PREENCHER]` - Escala de antecedência e percentuais de devolução no cancelamento pelo usuário (cláusula 5.3).
- [ ] `[PREENCHER]` - Percentual de devolução em caso de não comparecimento por motivo de saúde (cláusula 5.6).
- [ ] `[PREENCHER]` - Existência e cobertura de seguro de acidentes pessoais para participantes de torneio (cláusula 6.7).
- [ ] `[PREENCHER]` - E-mail, telefone e prazo de resposta do atendimento (cláusula 9.1).
- [ ] `[PREENCHER]` - Conferir com a equipe técnica se cada medida de segurança listada na cláusula 8.1 está de fato implementada. Retirar as que não estiverem.
- [ ] `[PREENCHER]` - Confirmar se a QuadraJá opera as quadras, apenas as intermedeia, ou as duas coisas (cláusula 6.4).
- [ ] `[PREENCHER]` - Confirmar se a foto de perfil é ou será submetida a reconhecimento facial. Se for, a cláusula 2.3 e a base legal do tratamento mudam.

## 6. Requisitos para implementação

Traduzido para o que precisa existir no produto.

**Cadastro e aceite**

- [ ] Publicar Termos e Política de Privacidade em página de acesso livre, sem exigir conta.
- [ ] Remover a pré-marcação da caixa de aceite. Bloquear a conclusão do cadastro sem marcação ativa.
- [ ] Exibir, antes do aceite, resumo com destaque para as cláusulas que limitam direitos.
- [ ] Gravar, para cada aceite: identificador do usuário, data, hora, versão do documento e endereço IP.
- [ ] Enviar por e-mail, após o cadastro, a confirmação do aceite e a cópia integral dos Termos.
- [ ] Versionar os documentos e manter as versões anteriores acessíveis com a data de vigência.

**Minimização de dados**

- [ ] Retirar o campo de endereço residencial do cadastro.
- [ ] Mover a coleta de CPF para o fluxo de pagamento.
- [ ] Mover o contato de emergência para o fluxo de inscrição em torneio e torná-lo opcional.
- [ ] Tornar a foto de perfil opcional.
- [ ] Definir e implementar a rotina de eliminação automática por prazo de retenção, conforme a tabela da cláusula 3.4.

**Consentimento**

- [ ] Separar o consentimento de marketing do aceite dos Termos, em caixa própria, não pré-marcada.
- [ ] Permitir revogação do consentimento de marketing nas configurações da conta e por link em toda mensagem.
- [ ] Registrar cada consentimento com finalidade, data, hora e versão do texto apresentado.

**Menores**

- [ ] Bloquear a criação de conta por usuário que declare idade inferior a 18 anos e direcioná-lo ao fluxo de responsável.
- [ ] Criar o fluxo de conta gerida por responsável, com identificação do responsável e confirmação de titularidade do contato informado.
- [ ] Colher o consentimento do responsável para tratamento dos dados do menor em etapa destacada e separada.
- [ ] Publicar, em página de acesso livre, a informação sobre dados de menores, riscos, medidas de segurança e ferramentas de supervisão parental.
- [ ] Disponibilizar ao responsável painel para consultar, corrigir e eliminar dados do menor e encerrar a conta.
- [ ] Avaliar a necessidade de relatório de impacto para o tratamento de dados de menores (Lei nº 15.211/2025, art. 16, parágrafo único, II).

**Imagem**

- [ ] Criar o fluxo de autorização específica de uso publicitário, solicitada no momento do uso pretendido, com registro do aceite.
- [ ] Criar o fluxo de autorização de imagem de menor, em documento separado da inscrição.
- [ ] Criar o canal de solicitação de retirada de imagem, com prazo de 15 dias.
- [ ] Marcar no acervo as imagens que têm e que não têm autorização publicitária, para impedir uso indevido.

**Pagamento e reembolso**

- [ ] Exibir o preço final, com a taxa de serviço já somada e discriminada, desde a tela de inscrição.
- [ ] Implementar o botão de desistência em 7 dias, com devolução automática.
- [ ] Implementar a escala de cancelamento da cláusula 5.3, exibindo o valor a devolver antes da confirmação.
- [ ] Implementar a devolução automática e integral em caso de cancelamento pela organização.
- [ ] Implementar o fluxo de escolha do usuário em caso de remarcação.

**Segurança e incidentes**

- [ ] Conferir item a item a lista da cláusula 8.1 com a equipe técnica.
- [ ] Implementar registro de auditoria dos acessos administrativos a dados pessoais.
- [ ] Definir o procedimento interno de resposta a incidente, com prazo e responsável pela comunicação à ANPD.
- [ ] Manter registro interno de incidentes.

**Operação**

- [ ] Publicar o regulamento dos torneios como documento próprio, com aceite específico na inscrição.
- [ ] Implementar o canal de atendimento eletrônico com registro de protocolo.
- [ ] Implementar a rotina de inspeção periódica das quadras, com registro do resultado.
- [ ] Nomear o encarregado e publicar o contato.
- [ ] Elaborar o registro das operações de tratamento a partir da tabela da cláusula 3.2.

## 7. Pendências de validação

Três pontos não puderam ser fechados em fonte oficial. Encaminhados em `CONSULTA-ADVOGADO-termos-quadraja-2026-08-21.md`.

| # | Questão | Por que não foi possível concluir | Impacto |
|---|---|---|---|
| 1 | O prazo de arrependimento do art. 49 do CDC se aplica à inscrição em torneio com data marcada, e como fica quando o torneio começa antes de esgotados os 7 dias? | O art. 49 não excepciona serviço com data determinada, e a biblioteca local não traz jurisprudência. A redação proposta na cláusula 5.2 adota a solução mais protetiva, mas ela não foi confirmada em fonte oficial. | Define se a inscrição feita a menos de 7 dias do torneio é reembolsável. Afeta receita e o desenho da tela de cancelamento. |
| 2 | Qual a extensão máxima válida de uma autorização de uso de imagem gratuita em contrato de adesão de consumo, diante do art. 11 do Código Civil? | O art. 11 veda a limitação voluntária ao exercício de direito da personalidade, mas o alcance disso sobre a autorização de imagem é objeto de divergência doutrinária e jurisprudencial. A biblioteca local traz o texto legal, não a orientação dos tribunais. | Define se o prazo de 2 anos e o território nacional da cláusula 4.2 são suficientes, insuficientes ou já excessivos. |
| 3 | A QuadraJá se enquadra como serviço de acesso provável por crianças e adolescentes para fins da Lei nº 15.211/2025, e quais dos deveres dos arts. 10 a 17 são exigíveis desde já? | A lei está em vigor desde 17/03/2026 e o Decreto nº 12.880/2026 desde 18/03/2026, mas ambos remetem à regulamentação da ANPD e da autoridade específica em vários pontos. A orientação da ANPD registrada em `fontes/eca-digital/23-anpd-afericao-idade-orientacoes-2026.html` indica que a segunda etapa de monitoramento, que definirá os demais setores alcançados, começaria em agosto de 2026 - portanto está em curso agora, sem orientação definitiva publicada. | Define o tamanho do investimento em ferramentas de supervisão parental e se é exigível relatório de impacto para dados de menores. |

## 8. Fontes verificadas

Biblioteca local conferida contra a fonte oficial em 2026-08-21, com resultado 29/29 EM DIA, conforme `STATUS-FONTES.md`. Snapshot coletado em 2026-08-21.

| Norma / ato | Artigo | Onde foi verificado | Data |
|---|---|---|---|
| Constituição Federal | art. 5º, X e XXXVI | `fontes/leis/00-constituicao-federal.html` | 2026-08-21 |
| Código Civil - Lei nº 10.406/2002 | arts. 3º, 4º, 11 e 20 | `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html` | 2026-08-21 |
| CDC - Lei nº 8.078/1990 | arts. 6º, 14, 25, 31, 35, 46, 49, 51 e 101 | `fontes/leis/02-cdc-lei-8078-1990-compilado.html` | 2026-08-21 |
| LGPD - Lei nº 13.709/2018 | arts. 5º, 6º, 7º, 8º, 9º, 14, 15, 16, 18, 41, 42, 43, 44, 46 e 48 | `fontes/leis/03-lgpd-lei-13709-2018-compilado.html` | 2026-08-21 |
| Marco Civil da Internet - Lei nº 12.965/2014 | art. 15 | `fontes/leis/04-marco-civil-internet-lei-12965-2014.html` | 2026-08-21 |
| Decreto do Comércio Eletrônico - nº 7.962/2013 | arts. 2º e 4º | `fontes/leis/05-comercio-eletronico-decreto-7962-2013.html` | 2026-08-21 |
| ECA - Lei nº 8.069/1990 | art. 17 | `fontes/leis/08-eca-lei-8069-1990.html` | 2026-08-21 |
| ECA Digital - Lei nº 15.211/2025 | arts. 5º, 6º, 9º, 10, 12, 13, 14, 16, 17 e 41-A | `fontes/eca-digital/20-eca-digital-lei-15211-2025.html` | 2026-08-21 |
| Decreto nº 12.880/2026 | arts. 2º, 17, 18, 19, 20 e 54 | `fontes/eca-digital/21-eca-digital-decreto-12880-2026.html` | 2026-08-21 |
| ANPD - orientações sobre aferição de idade | cronograma de monitoramento | `fontes/eca-digital/23-anpd-afericao-idade-orientacoes-2026.html` | 2026-08-21 |
| Resolução CD/ANPD nº 15/2024 | comunicação de incidente | `fontes/anpd/41-resolucao-anpd-15-2024-incidentes.html` | 2026-08-21 |
| Resolução CD/ANPD nº 18/2024 | atuação do encarregado | `fontes/anpd/40-resolucao-anpd-18-2024-encarregado.html` | 2026-08-21 |
| Resolução CD/ANPD nº 19/2024 | transferência internacional | `fontes/anpd/42-resolucao-anpd-19-2024-transferencia-internacional.html` | 2026-08-21 |
| ANPD - Guia Orientativo sobre Cookies | integral | `fontes/anpd/31-guia-cookies.pdf` | 2026-08-21 |

## 9. Documento revisado - texto integral

Versão consolidada, com as redações propostas aplicadas. Substitui integralmente o texto original.

---

# Termos de Uso - QuadraJá

**Versão 2.0 - vigente a partir de [PREENCHER - data]**

Estes Termos regulam o uso do aplicativo QuadraJá, plataforma de reserva de quadras e de organização de torneios amadores de padel.

**Fornecedor:** [PREENCHER - razão social], CNPJ [PREENCHER], com sede em [PREENCHER - endereço completo]. Atendimento em [PREENCHER - e-mail] e [PREENCHER - telefone].

## 1. Aceite

1.1. Estes Termos ficam disponíveis para leitura integral antes do cadastro, em página de acesso livre, sem necessidade de criar conta.

1.2. Para criar conta, o usuário marca a caixa de aceite. A caixa não vem pré-marcada e o cadastro não se conclui sem ela.

1.3. Antes do aceite, o aplicativo exibe um resumo destes Termos com destaque para as cláusulas que limitam direitos do usuário, especialmente as regras de cancelamento e reembolso (cláusula 5) e de uso de imagem (cláusula 4).

1.4. Concluído o cadastro, a QuadraJá envia ao e-mail informado a confirmação do aceite e a cópia integral dos Termos aceitos, em formato que permita salvar e imprimir.

1.5. A QuadraJá registra data, hora e versão do documento aceito, e mantém esse registro enquanto durar a conta e pelo prazo de prescrição aplicável.

## 2. Cadastro e conta

2.1. Para criar conta, o usuário informa nome, e-mail e telefone.

2.2. A QuadraJá solicita o CPF apenas quando houver pagamento, para emissão de documento fiscal, e a data de nascimento apenas para verificar a idade mínima e definir o fluxo aplicável a menores.

2.3. A foto de perfil é opcional. É usada apenas para identificação visual do usuário dentro do aplicativo e não é submetida a reconhecimento facial nem a qualquer tratamento biométrico.

2.4. O contato de emergência é solicitado apenas na inscrição em torneio, é opcional e é usado exclusivamente para acionamento em caso de emergência médica durante o evento.

2.5. Menores de 18 anos não criam conta própria. A conta é criada pelo pai, pela mãe ou pelo responsável legal, que se identifica, declara essa condição e responde pelo uso.

2.6. No cadastro de menor, o responsável dá consentimento específico e em destaque para o tratamento dos dados do menor, em etapa separada do aceite destes Termos, e a QuadraJá confirma a titularidade do contato informado antes de ativar a conta.

2.7. A QuadraJá mantém, em página de acesso livre e independente da contratação, informações sobre os dados que coleta de menores, as finalidades, os riscos, as medidas de segurança e as ferramentas de supervisão parental disponíveis.

2.8. O responsável pode, a qualquer momento e sem custo, consultar os dados do menor, corrigi-los, solicitar sua eliminação e encerrar a conta.

2.9. O usuário é responsável pela veracidade das informações que fornece e por manter seus dados atualizados.

## 3. Dados pessoais

3.1. A QuadraJá é a controladora dos dados pessoais tratados no aplicativo. Os detalhes estão na Política de Privacidade, parte integrante destes Termos.

3.2. Os dados são tratados para as seguintes finalidades, e apenas para elas:

| Finalidade | Dados | Hipótese legal (Lei nº 13.709/2018) |
|---|---|---|
| Criar e manter a conta | Nome, e-mail, telefone | Execução de contrato - art. 7º, V |
| Reservar quadra e confirmar horário | Dados da conta e histórico de reservas | Execução de contrato - art. 7º, V |
| Inscrever em torneio e organizar chaves | Dados da conta, data de nascimento, categoria | Execução de contrato - art. 7º, V |
| Cobrar e emitir documento fiscal | CPF e dados da transação | Obrigação legal - art. 7º, II |
| Acionar contato de emergência durante evento | Contato de emergência | Proteção da vida e da incolumidade física - art. 7º, VII |
| Enviar comunicações promocionais | Nome e e-mail | Consentimento específico - art. 7º, I |

3.3. A QuadraJá não vende dados pessoais. O compartilhamento ocorre apenas com: [PREENCHER - relacionar processador de pagamento, provedor de hospedagem, serviço de e-mail e demais operadores, com nome e finalidade de cada um].

3.4. Prazos de retenção:

| Dado | Prazo |
|---|---|
| Dados da conta | Enquanto a conta existir, e por 6 meses após o encerramento |
| Registros de acesso à aplicação | 6 meses, conforme o art. 15 da Lei nº 12.965/2014 |
| Dados fiscais e de pagamento | 5 anos, conforme a legislação fiscal aplicável |
| Registro de aceite dos Termos | Enquanto a conta existir, e pelo prazo de prescrição aplicável |
| Contato de emergência | Até 30 dias após o encerramento do torneio |

Vencido o prazo, os dados são eliminados ou anonimizados.

3.5. As comunicações promocionais dependem de consentimento específico, dado em caixa própria, não pré-marcada, separada do aceite destes Termos. Recusar não impede o cadastro nem restringe qualquer funcionalidade. O consentimento pode ser revogado a qualquer momento, de forma gratuita e facilitada, em link presente em toda mensagem e nas configurações da conta.

3.6. O usuário pode, a qualquer momento e sem custo, pedir confirmação da existência de tratamento, acesso, correção, anonimização, bloqueio ou eliminação de dados desnecessários ou excessivos, portabilidade, informação sobre compartilhamento e revogação do consentimento. O pedido é feito em [PREENCHER - canal e endereço] e respondido em até 15 dias.

3.7. Encarregado pelo tratamento de dados pessoais: [PREENCHER - nome e e-mail].

## 4. Uso de imagem

4.1. A QuadraJá registra os torneios em foto e vídeo para fins de cobertura do evento, divulgação institucional e publicação de resultados.

4.2. Ao se inscrever em torneio, o usuário autoriza o uso de sua imagem, voz e nome exclusivamente nesse contexto, nos canais oficiais da QuadraJá e no material de cobertura do próprio evento, pelo prazo de 2 (dois) anos contados do encerramento do torneio, em território nacional.

4.3. Uso publicitário, uso em campanha paga, uso associado a patrocinador e uso em destaque individual dependem de autorização específica e separada, solicitada ao usuário no momento em que o uso for pretendido, com indicação da peça, do canal, do prazo e da existência ou não de remuneração. A recusa não afeta a participação no torneio nem qualquer outro direito do usuário.

4.4. O usuário pode solicitar, a qualquer momento, a retirada de imagem em que apareça identificável. A QuadraJá atende em até 15 dias nos canais sob seu controle. Material já impresso ou já distribuído a terceiros fica ressalvado quanto a exemplares fora de seu alcance, e a QuadraJá não os reproduz novamente.

4.5. Imagem de menor de 18 anos:

a) depende de autorização específica do pai, da mãe ou do responsável legal, dada em documento próprio, distinto da inscrição e do aceite destes Termos;

b) a inscrição do menor no torneio, por si só, não autoriza uso de imagem;

c) a autorização pode ser revogada a qualquer tempo, com o mesmo efeito previsto na cláusula 4.4;

d) a QuadraJá não usa imagem de menor em publicidade, em campanha paga ou em peça associada a patrocinador, ainda que haja autorização do responsável.

4.6. A QuadraJá não cede nem licencia a terceiros a imagem dos usuários, salvo autorização específica na forma da cláusula 4.3.

## 5. Pagamentos, cancelamento e reembolso

5.1. O preço da inscrição é exibido com todos os valores já somados, incluída a taxa de serviço, discriminados item a item antes da confirmação do pagamento. Nenhum valor é acrescido após a tela de confirmação.

5.2. **Arrependimento.** O usuário pode desistir da inscrição em até 7 (sete) dias corridos contados da contratação, sem precisar justificar, e recebe de volta a integralidade do valor pago, com correção monetária, no mesmo meio de pagamento, em até 10 dias. Se o torneio começar antes de esgotado esse prazo, a desistência pode ser exercida até o início do torneio.

5.3. **Cancelamento pelo usuário fora do prazo de arrependimento.**

| Antecedência em relação ao início do torneio | Devolução |
|---|---|
| Mais de [PREENCHER] dias | 100% |
| Entre [PREENCHER] e [PREENCHER] dias | [PREENCHER]% |
| Menos de [PREENCHER] dias | [PREENCHER]% |

A retenção corresponde a custos já incorridos com a organização e é informada ao usuário antes da confirmação do cancelamento.

5.4. **Cancelamento pela organização.** Cancelado o torneio, o usuário recebe 100% do valor pago, com correção monetária, em até 10 dias, sem necessidade de solicitação. A regra vale qualquer que seja o motivo, inclusive caso fortuito e força maior.

5.5. **Remarcação pela organização.** Alterada a data, o local ou a categoria, o usuário escolhe entre manter a inscrição na nova configuração ou cancelar e receber 100% do valor pago, com correção, em até 10 dias. A QuadraJá comunica a alteração com a maior antecedência possível e concede prazo não inferior a 5 dias para a escolha.

5.6. **Não comparecimento.** O usuário que não comparecer sem cancelar previamente não tem direito a devolução, ressalvado motivo de saúde comprovado por atestado, hipótese em que a QuadraJá devolve [PREENCHER]% do valor.

5.7. **Reserva de quadra.** O cancelamento de reserva avulsa segue a regra informada na tela da reserva, sempre exibida antes da confirmação do pagamento.

## 6. Responsabilidade e segurança

6.1. A QuadraJá responde pelos danos decorrentes de defeito na prestação de seus serviços, nos termos do Código de Defesa do Consumidor. Nenhuma disposição destes Termos exclui, limita ou atenua essa responsabilidade.

6.2. A QuadraJá mantém as quadras sob sua administração em condições adequadas de uso e segurança, realiza inspeção periódica e registra o resultado. Constatado risco, a quadra é interditada até a correção, e as reservas afetadas são remarcadas ou reembolsadas integralmente, à escolha do usuário.

6.3. A QuadraJá informa aos usuários os riscos inerentes à prática do padel e mantém, nos locais de jogo, sinalização de segurança e protocolo de atendimento de emergência.

6.4. Quando a quadra for de terceiro apenas intermediada pelo aplicativo, a QuadraJá informa essa condição ao usuário antes da reserva, com a identificação do responsável pelo espaço. A informação não afasta a responsabilidade solidária da QuadraJá perante o usuário, nos termos da lei.

6.5. O usuário se compromete a usar equipamento adequado, respeitar a sinalização e comunicar imediatamente qualquer defeito que identifique na quadra ou nos equipamentos. O descumprimento é considerado na apuração da responsabilidade, nos limites do art. 14, § 3º, do Código de Defesa do Consumidor.

6.6. A prática esportiva envolve risco inerente de lesão, mesmo em condições regulares de segurança. A QuadraJá recomenda avaliação médica prévia e não responde por condição de saúde preexistente não informada, o que não afasta sua responsabilidade por defeito do serviço.

6.7. Cobertura de seguro: [PREENCHER - informar se há seguro de acidentes pessoais para participantes de torneio, e qual a cobertura].

## 7. Alterações destes Termos

7.1. A QuadraJá pode alterar estes Termos para adequá-los a mudança na legislação, na operação ou nos serviços oferecidos.

7.2. A alteração é comunicada ao usuário por e-mail e por aviso no aplicativo com, no mínimo, 30 (trinta) dias de antecedência da entrada em vigor. A comunicação destaca especificamente o que mudou.

7.3. A nova versão vale apenas para o período posterior à sua entrada em vigor. Reservas e inscrições já contratadas continuam regidas pela versão vigente na data da contratação.

7.4. O usuário que não concordar com a alteração pode encerrar a conta, sem custo, até a data de entrada em vigor, e recebe de volta os valores referentes a serviços contratados e ainda não prestados.

7.5. Quando a alteração envolver tratamento de dados pessoais sujeito a consentimento, a QuadraJá informa o teor da mudança com destaque e colhe novo consentimento. A recusa não afeta os serviços que não dependam daquele tratamento.

7.6. A QuadraJá mantém as versões anteriores destes Termos disponíveis para consulta, com a respectiva data de vigência.

## 8. Segurança da informação e incidentes

8.1. A QuadraJá adota medidas técnicas e administrativas para proteger os dados pessoais, entre elas: criptografia dos dados em trânsito e em repouso, controle de acesso por perfil com o mínimo de privilégio necessário, autenticação dos administradores em duas etapas, registro de auditoria dos acessos a dados pessoais, backup periódico com teste de restauração e revisão periódica das permissões.

8.2. A QuadraJá responde pelos danos causados por tratamento de dados pessoais em desconformidade com a legislação, nos termos dos arts. 42 a 44 da Lei nº 13.709/2018. Nenhuma disposição destes Termos afasta essa responsabilidade.

8.3. Ocorrido incidente de segurança que possa acarretar risco ou dano relevante, a QuadraJá comunica à Autoridade Nacional de Proteção de Dados e aos titulares afetados, no prazo e na forma da Resolução CD/ANPD nº 15/2024, informando a natureza dos dados atingidos, os riscos envolvidos e as medidas adotadas para reverter ou mitigar os efeitos.

8.4. A QuadraJá mantém registro interno dos incidentes de segurança, ainda que não sujeitos a comunicação, e o disponibiliza à autoridade quando requisitado.

8.5. O usuário é responsável por manter a confidencialidade de suas credenciais e deve comunicar imediatamente à QuadraJá qualquer uso não autorizado de sua conta.

## 9. Conduta, suspensão e encerramento

9.1. O usuário se compromete a não usar o aplicativo para fim ilícito, a não fornecer informação falsa, a não usar conta de terceiro sem autorização e a respeitar os demais usuários e a equipe da QuadraJá.

9.2. Constatado descumprimento, a QuadraJá comunica o usuário, indica o motivo e concede prazo de [PREENCHER] dias para manifestação, salvo quando houver risco à segurança de outras pessoas, hipótese em que a suspensão é imediata e a comunicação, posterior.

9.3. O usuário pode encerrar a conta a qualquer momento, pelo próprio aplicativo, sem custo e sem necessidade de justificar. O encerramento não prejudica reembolsos devidos nem obrigações já vencidas.

## 10. Torneios

10.1. Cada torneio tem regulamento próprio, publicado antes da abertura das inscrições, com elegibilidade, categorias, formato de disputa, critérios de classificação, penalidades e premiação.

10.2. A inscrição em torneio depende de aceite específico do respectivo regulamento, registrado separadamente do aceite destes Termos.

10.3. Havendo conflito entre o regulamento de um torneio e estes Termos, prevalece a regra mais favorável ao usuário.

## 11. Propriedade intelectual

11.1. O aplicativo, seu código, sua marca, seu nome e seu conteúdo pertencem à QuadraJá, protegidos pela Lei nº 9.609/1998 e pela Lei nº 9.610/1998.

11.2. O usuário recebe licença de uso pessoal, não exclusiva e intransferível do aplicativo, limitada à finalidade destes Termos e válida enquanto durar a conta.

11.3. O conteúdo publicado pelo usuário continua sendo dele. Ao publicar, o usuário autoriza a QuadraJá a exibi-lo dentro do aplicativo, apenas para viabilizar a funcionalidade utilizada, enquanto o conteúdo estiver publicado.

## 12. Atendimento, solução de conflitos e foro

12.1. Antes de recorrer ao Judiciário, o usuário pode procurar o atendimento da QuadraJá em [PREENCHER - e-mail e telefone], que responde em até [PREENCHER] dias úteis. O uso desse canal é uma faculdade e não condiciona nem restringe o acesso a qualquer outra via.

12.2. A QuadraJá também atende pela plataforma consumidor.gov.br e pelos órgãos de defesa do consumidor.

12.3. Estes Termos são regidos pela lei brasileira.

12.4. O usuário consumidor pode propor ação no foro de seu domicílio, conforme o art. 101, I, do Código de Defesa do Consumidor. Para as demais hipóteses, fica eleito o foro da comarca de [PREENCHER - cidade da sede].

---

## Pontos pendentes de parecer jurídico

Este documento tem **3 pontos** que não foi possível validar em fonte oficial. Os demais foram verificados e estão relacionados em "Fontes verificadas".

Encaminhado para parecer em `CONSULTA-ADVOGADO-termos-quadraja-2026-08-21.md`.

| # | Ponto | Onde aparece | Por que não foi possível concluir |
|---|---|---|---|
| 1 | Aplicação do prazo de arrependimento de 7 dias a inscrição em torneio com data marcada | Cláusula 5.2 do texto revisado | O art. 49 do CDC não excepciona serviço com data determinada, e a biblioteca local não traz jurisprudência sobre a hipótese |
| 2 | Extensão máxima válida de autorização gratuita de uso de imagem em contrato de adesão de consumo | Cláusula 4.2 do texto revisado - prazo de 2 anos e território nacional | O alcance do art. 11 do Código Civil sobre autorização de imagem é objeto de divergência doutrinária e jurisprudencial não coberta pela biblioteca local |
| 3 | Enquadramento da QuadraJá como serviço de acesso provável por crianças e adolescentes, e exigibilidade atual dos deveres dos arts. 10 a 17 da Lei nº 15.211/2025 | Cláusulas 2.5 a 2.8 do texto revisado | A lei e o Decreto nº 12.880/2026 remetem à regulamentação da ANPD e da autoridade específica em vários pontos, e a segunda etapa de monitoramento da ANPD está em curso sem orientação definitiva publicada |

**Não utilize o documento nesses pontos específicos antes do parecer.** O restante do texto está verificado.
