# Revisão - Contrato de Desenvolvimento Norvia x Bitola

| | |
|---|---|
| Documento de origem | `testes/contrato-desenvolvimento-exemplo.md` |
| Tipo | Contrato de desenvolvimento de software sob encomenda |
| Partes | Norvia Logística S.A. (contratante) e Bitola Software Ltda. (contratada) |
| Solicitante | [PREENCHER] |
| Data da revisão | 2026-08-21 |

## 1. Resumo executivo

Contrato de desenvolvimento sob encomenda de sistema de roteirização de frota, no valor de R$ 348.000,00, entre duas sociedades empresárias.

O documento é razoável na estrutura econômica e desequilibrado em pontos específicos. Das onze cláusulas, seis têm apontamento e cinco passam sem reparo. A maior concentração de problema está na cláusula 10, que combina rescisão sem aviso com perda do código produzido e sem devolução de parcelas, e na cláusula 7, cujo regime de proteção de dados deixa a contratante exposta perante a ANPD por prazo alheio ao dela.

Registro necessário sobre o método, porque muda a leitura de metade do contrato: **não há relação de consumo aqui**. Cláusulas que seriam nulas de pleno direito num contrato com consumidor - limitação de responsabilidade, eleição de foro com renúncia, cessão ampla e definitiva - são válidas entre empresas e não foram apontadas. A justificativa está na seção 2.

Há também um erro material de qualificação que precisa de correção antes da assinatura: o CNPJ da contratada tem 15 dígitos.

**Situação:** pronto após ajustes

| Severidade | Quantidade |
|---|---|
| Risco alto | 2 |
| Risco médio | 2 |
| Risco baixo | 1 |
| Pendências de validação | 2 |

## 2. Contexto e premissas

**Premissas de incidência** - os fatos que acionam cada corpo de norma, e os que afastam.

| Premissa | O que aciona | Por quê |
|---|---|---|
| **Não** há relação de consumo | Afasta o CDC | Norvia Logística S.A. e Bitola Software Ltda. são sociedades empresárias contratando no exercício de suas atividades. O sistema de roteirização de frota se destina à atividade-fim da contratante, como insumo de sua operação logística, e não a consumo final. Não há destinatário final no sentido do art. 2º do CDC |
| Regime aplicável | Código Civil, Lei nº 9.609/1998, Lei nº 9.610/1998, LGPD | Contrato paritário de prestação de serviço com criação de obra intelectual e tratamento de dados pessoais |
| Há criação de programa de computador sob encomenda | Lei nº 9.609/1998 | Objeto declarado na cláusula 1 |
| Há tratamento de dados pessoais com papéis repartidos | LGPD, arts. 39 a 41 e 48 | A cláusula 7 atribui à contratante o papel de controladora e à contratada o de operadora |

A premissa de ausência de relação de consumo é a mais importante desta revisão. Se estiver errada - por exemplo, se ficar demonstrada vulnerabilidade técnica da contratante que justifique a aplicação da teoria finalista mitigada -, cinco cláusulas hoje consideradas válidas passam a ser discutíveis. Ver a pendência nº 1.

**Fatos confirmados** - o que veio do documento.

- Valor de R$ 348.000,00 em 6 parcelas mensais, com reajuste anual pelo IPCA.
- Entrega em 3 sprints de 4 semanas, com homologação em 5 dias úteis.
- Titularidade do código-fonte atribuída à contratante.
- Componentes de terceiros e licenças relacionados em Anexo II.
- Garantia de 90 dias por entrega homologada.
- Limitação de responsabilidade ao valor pago nos 12 meses anteriores.

**Hipóteses de trabalho** - assumido por ausência de informação.

- Os Anexos I e II existem e integram o contrato. A revisão não teve acesso a eles, e o Anexo II é material para a análise da cláusula 4.
- O sistema tratará dados pessoais de motoristas e de destinatários de entrega. A cláusula 7 pressupõe tratamento, mas o contrato não descreve quais dados.
- Não há operação assistida nem hospedagem pela contratada após a entrega. O contrato não menciona.

## 3. Análise cláusula a cláusula

### Cláusula 1 - Objeto

**Texto original**

> A CONTRATADA desenvolverá, sob encomenda, o sistema de roteirização descrito no Anexo I, conforme especificação funcional a ser aprovada pela CONTRATANTE.

**Classificação:** -

**Risco:** -

**Apontamento**

Sem apontamento. O objeto está delimitado por remissão a anexo, o que é técnica usual e adequada. A revisão registra a hipótese de trabalho de que o Anexo I existe e é suficientemente específico - sem ele, a cláusula 2 fica sem critério de homologação, o que é tratado adiante.

---

### Cláusula 2 - Prazo e entregas

**Texto original**

> Entrega em 3 sprints de 4 semanas. A CONTRATANTE tem 5 dias úteis para homologar cada entrega. Silêncio no prazo equivale a aprovação.

**Classificação:** INTERPRETAÇÃO

**Risco:** Médio

**Apontamento**

A aprovação tácita por silêncio não é inválida em si. O Código Civil admite que o silêncio importe anuência quando as circunstâncias ou os usos o autorizarem e não for necessária declaração expressa, e prazo de homologação com aceite tácito é uso corrente em desenvolvimento de software. O problema é outro, e é de risco, não de nulidade.

Faltam duas coisas para que o mecanismo funcione. A primeira é o critério objetivo de homologação: sem definição do que se considera entrega conforme, o silêncio aprova qualquer coisa que tenha sido entregue, inclusive entrega parcial ou com defeito. A segunda é a articulação com a garantia da cláusula 8 - se a homologação tácita consome o direito de reclamar, a garantia de 90 dias perde efeito prático; se não consome, o contrato precisa dizer.

Cinco dias úteis também é prazo curto para homologar um sprint de quatro semanas em sistema de roteirização, e prazo curto aumenta a chance de aprovação tácita por incapacidade operacional, não por concordância.

**Fundamento**

- Norma: Código Civil, art. 111
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`, confirmado EM DIA no relatório `STATUS-FONTES.md` de 2026-08-21
- Data da verificação: 2026-08-21
- Hipótese de incidência: contrato paritário regido pelo Código Civil, conforme premissa da seção 2. O artigo condiciona a anuência tácita a que "as circunstâncias ou os usos o autorizarem", o que remete ao uso do setor, presente aqui
- Transcrição:

> Art. 111. O silêncio importa anuência, quando as circunstâncias ou os usos o autorizarem, e não for necessária a declaração de vontade expressa.

- Norma: Código Civil, art. 422
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`
- Data da verificação: 2026-08-21
- Hipótese de incidência: a boa-fé objetiva rege a execução do contrato, e ampara a exigência de critério verificável de homologação

**Redação proposta**

> **2. Prazo, entregas e homologação**
>
> 2.1. A entrega ocorre em 3 sprints de 4 semanas, conforme cronograma do Anexo I.
>
> 2.2. Cada entrega é acompanhada de relatório indicando os itens do Anexo I contemplados e o resultado dos testes automatizados executados.
>
> 2.3. A CONTRATANTE tem 10 (dez) dias úteis para homologar, contados do recebimento do relatório. Considera-se conforme a entrega que atenda aos requisitos do Anexo I e passe nos critérios de aceite ali definidos.
>
> 2.4. Decorrido o prazo sem manifestação, a entrega é considerada homologada. A homologação tácita não afasta a garantia da cláusula 8 nem a responsabilidade por defeito não aparente ao tempo da homologação.
>
> 2.5. Havendo recusa, a CONTRATANTE indica por escrito os itens não atendidos, e a CONTRATADA tem 10 dias úteis para corrigir, sem custo adicional e sem prorrogação do cronograma total, salvo se a recusa for improcedente.

**O que muda na prática**

O prazo dobra e passa a correr de um marco verificável. A homologação tácita continua existindo, porque é do interesse das duas partes destravar o cronograma, mas deixa de funcionar como quitação geral: defeito não aparente continua coberto pela garantia. A contratada ganha previsibilidade e a contratante para de correr o risco de aprovar por omissão.

---

### Cláusula 3 - Preço

**Texto original**

> R$ 348.000,00, em 6 parcelas mensais de R$ 58.000,00. Reajuste anual pelo IPCA caso o contrato se estenda por mais de 12 meses. Tributos incidentes na forma da lei, cada parte arcando com os de sua responsabilidade.

**Classificação:** -

**Risco:** -

**Apontamento**

Sem apontamento. Valor total, número e valor das parcelas conferem entre si. O reajuste anual por IPCA é cláusula comum e válida, com índice identificado e periodicidade admitida, e não há aqui a vedação do art. 51, X, do CDC, porque não incide o regime consumerista e porque o reajuste não é variação unilateral: está atrelado a índice objetivo e externo às partes. A repartição de tributos pela responsabilidade legal de cada parte não altera a sujeição passiva definida em lei, e por isso não cria problema.

---

### Cláusula 4 - Propriedade intelectual

**Texto original**

> Todo o código-fonte desenvolvido sob encomenda neste contrato, bem como a documentação técnica correspondente, fica de titularidade exclusiva da CONTRATANTE, em caráter definitivo, para todo o território e sem limitação de prazo.
>
> A CONTRATADA declara que os componentes de terceiros e bibliotecas de código aberto utilizados estão relacionados no Anexo II, com as respectivas licenças.

**Classificação:** FATO LEGAL

**Risco:** Baixo

**Apontamento**

A cessão patrimonial é válida como está, e convém dizer isso com clareza porque a redação tem a aparência das cláusulas que costumam ser anuladas. Cessão definitiva, para todo o território e sem limite de prazo, de direito patrimonial de autor sobre programa de computador, entre empresas, é lícita. Não há aqui o vício que existiria numa cessão de direito de imagem em contrato de adesão: o objeto é diferente e o regime é diferente.

O reparo é pontual e diz respeito ao que sobra depois da cessão. A Lei de Software afasta os direitos morais do programa de computador, mas ressalva dois: reivindicar a paternidade do programa, e opor-se a alteração não autorizada que implique deformação, mutilação ou modificação que prejudique a honra ou a reputação do autor. Esses dois não se transferem com a cessão patrimonial, e o contrato não os menciona. Sem a ressalva, a cláusula sugere transferência integral e cria discussão futura desnecessária.

Vale marcar o que **não** foi apontado, para evitar leitura ampliada: não se invoca aqui o art. 27 da Lei nº 9.610/1998, que declara os direitos morais inalienáveis e irrenunciáveis. Aquele artigo é a regra geral do direito autoral; para software vale a norma especial, e ela restringe expressamente o rol. Aplicar a regra geral sem a lente da especial levaria a declarar inválida uma cessão que é válida.

A declaração sobre componentes de terceiros é boa prática, mas é declaração, não garantia. Ver a cláusula ausente correspondente na seção 4.

**Fundamento**

- Norma: Lei nº 9.609/1998, art. 2º, caput e § 1º
- Verificado em: `fontes/leis/06-lei-software-9609-1998.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Hipótese de incidência: o objeto do contrato é programa de computador desenvolvido sob encomenda, e a norma é especial em relação à Lei nº 9.610/1998, delimitando quais direitos morais subsistem
- Transcrição:

> Art. 2º O regime de proteção à propriedade intelectual de programa de computador é o conferido às obras literárias pela legislação de direitos autorais e conexos vigentes no País, observado o disposto nesta Lei.
> § 1º Não se aplicam ao programa de computador as disposições relativas aos direitos morais, ressalvado, a qualquer tempo, o direito do autor de reivindicar a paternidade do programa de computador e o direito do autor de opor-se a alterações não-autorizadas, quando estas impliquem deformação, mutilação ou outra modificação do programa de computador, que prejudiquem a sua honra ou a sua reputação.

- Norma: Lei nº 9.610/1998, art. 27
- Verificado em: `fontes/leis/07-direitos-autorais-9610-1998.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Hipótese de incidência: **aplicação restringida.** A regra geral cede à norma especial da Lei nº 9.609/1998 quanto ao software, e por isso não fundamenta invalidade da cessão patrimonial

**Redação proposta**

> **4. Propriedade intelectual**
>
> 4.1. Os direitos patrimoniais sobre o código-fonte desenvolvido sob encomenda neste contrato, sobre os artefatos de build e sobre a documentação técnica correspondente ficam de titularidade exclusiva da CONTRATANTE, em caráter definitivo, para todo o território e sem limitação de prazo, desde o pagamento da parcela correspondente à entrega.
>
> 4.2. Permanecem com os autores, nos termos do art. 2º, § 1º, da Lei nº 9.609/1998, o direito de reivindicar a paternidade do programa e o de opor-se a alteração não autorizada que implique deformação, mutilação ou modificação capaz de prejudicar sua honra ou reputação. A CONTRATANTE não fica impedida de alterar, evoluir, integrar ou descontinuar o sistema no curso normal de seu uso.
>
> 4.3. Ferramentas, componentes e bibliotecas de uso geral preexistentes de titularidade da CONTRATADA não são cedidos. A CONTRATADA concede à CONTRATANTE licença perpétua, irrevogável, gratuita e transferível para usá-los na medida necessária à operação e à evolução do sistema entregue, e os relaciona no Anexo II.
>
> 4.4. A CONTRATADA garante que o código entregue não viola direito de propriedade intelectual de terceiro e que os componentes de código aberto do Anexo II têm licenças compatíveis com o uso comercial pretendido pela CONTRATANTE, sem obrigação de abertura do código proprietário.
>
> 4.5. A CONTRATADA responde por reclamação de terceiro fundada em violação de propriedade intelectual do código entregue, assumindo a defesa e arcando com condenação e custos, desde que notificada em prazo que permita a defesa.

**O que muda na prática**

A cessão continua ampla, com a data de transferência agora definida. A 4.2 fecha a discussão sobre direito moral sem prejudicar a liberdade de a contratante alterar o sistema, que é o que ela efetivamente precisa. A 4.3 resolve um ponto que o contrato original ignora: código de uso geral da fornecedora, que ela reutiliza entre clientes e não pode ceder com exclusividade. E a 4.4 e a 4.5 transformam a declaração sobre licenças em garantia com consequência, que é o que protege a contratante se um componente do Anexo II tiver licença incompatível.

---

### Cláusula 5 - Equipe

**Texto original**

> A CONTRATADA aloca equipe própria e responde por ela. A CONTRATANTE poderá solicitar a substituição de qualquer profissional, justificadamente.
>
> Durante a vigência e por 24 meses após o término, nenhuma das partes contratará profissional da outra que tenha atuado neste projeto, salvo com anuência escrita. O descumprimento sujeita a parte a multa de 12 vezes a última remuneração do profissional.

**Classificação:** RECOMENDAÇÃO

**Risco:** -

**Apontamento**

Sem apontamento quanto à validade. A cláusula de não aliciamento entre empresas é lícita, e esta tem os atributos que a sustentam: é recíproca, tem prazo determinado, delimita-se aos profissionais que atuaram no projeto e admite dispensa por anuência escrita. Não restringe o profissional, que não é parte do contrato e permanece livre para se candidatar onde quiser - a obrigação é das empresas entre si.

Fica uma observação sobre proporcionalidade, sem natureza de achado: multa de 12 vezes a última remuneração é elevada em relação ao dano típico de substituição de um profissional, e multa desproporcional tende a ser reduzida se questionada, o que enfraquece o próprio mecanismo. Reduzir para patamar entre 3 e 6 remunerações costuma preservar o efeito dissuasório com menos risco de revisão. É sugestão de negociação, não correção jurídica, e por isso não altera a contagem de severidade.

---

### Cláusula 6 - Confidencialidade

**Texto original**

> As partes manterão sigilo sobre informações técnicas e comerciais a que tiverem acesso, por prazo indeterminado, ainda que após o término do contrato.

**Classificação:** -

**Risco:** -

**Apontamento**

Sem apontamento. Sigilo por prazo indeterminado entre empresas é usual e válido, e a reciprocidade está declarada. A cláusula é enxuta e poderia definir o que se considera informação confidencial, as exceções usuais - informação pública, já conhecida, ou obtida licitamente de terceiro - e o dever de devolução ou destruição ao fim do contrato. A ausência desses elementos não a invalida, e a revisão registra a possibilidade de detalhamento sem classificá-la como achado.

---

### Cláusula 7 - Proteção de dados

**Texto original**

> A CONTRATANTE é a controladora dos dados pessoais tratados no sistema. A CONTRATADA atua como operadora e trata os dados somente conforme instruções documentadas da CONTRATANTE.
>
> A CONTRATADA poderá subcontratar suboperadores a seu critério, sem necessidade de aviso à CONTRATANTE.
>
> Ocorrendo incidente de segurança, a CONTRATADA comunicará a CONTRATANTE em até 90 dias.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

A repartição de papéis do primeiro parágrafo está correta e é a base do resto. Os dois parágrafos seguintes a contradizem.

**Suboperador a critério da contratada, sem aviso.** O operador realiza o tratamento segundo as instruções do controlador, e o controlador tem o dever de verificar a observância dessas instruções. Uma cláusula que autoriza a contratada a colocar terceiros na cadeia sem informar quem são retira da controladora a possibilidade de exercer essa verificação, e a controladora continua respondendo perante o titular e perante a ANPD por tratamento que ela não tem como conhecer. O desenho transfere o controle sem transferir a responsabilidade.

**Noventa dias para comunicar incidente.** É o ponto mais grave do contrato. O controlador deve comunicar à autoridade nacional e ao titular o incidente que possa acarretar risco ou dano relevante, em prazo definido pela regulamentação. A contratante só consegue cumprir esse prazo se souber do incidente, e ela depende inteiramente da contratada para saber. Um prazo contratual de 90 dias significa que a contratante pode ficar em descumprimento por quase três meses sem sequer ter conhecimento do fato. O prazo interno entre operador e controlador precisa ser muito menor do que o prazo regulatório, não múltiplas vezes maior.

**Fundamento**

- Norma: LGPD, art. 39
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Hipótese de incidência: a cláusula 7 atribui expressamente às partes os papéis de controladora e operadora, o que aciona o regime dos arts. 39 e seguintes
- Transcrição:

> Art. 39. O operador deverá realizar o tratamento segundo as instruções fornecidas pelo controlador, que verificará a observância das próprias instruções e das normas sobre a matéria.

- Norma: LGPD, art. 48, caput e § 1º
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`
- Data da verificação: 2026-08-21
- Hipótese de incidência: o dever de comunicar recai sobre o controlador, que aqui é a contratante, e depende de informação que só a operadora detém
- Transcrição:

> Art. 48. O controlador deverá comunicar à autoridade nacional e ao titular a ocorrência de incidente de segurança que possa acarretar risco ou dano relevante aos titulares.
> § 1º A comunicação será feita em prazo razoável, conforme definido pela autoridade nacional [...]

- Norma: Resolução CD/ANPD nº 15/2024
- Verificado em: `fontes/anpd/41-resolucao-anpd-15-2024-incidentes.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Hipótese de incidência: a resolução fixa prazo e forma da comunicação de incidente, e é o parâmetro contra o qual os 90 dias contratuais se mostram incompatíveis

- Norma: LGPD, art. 42, § 1º, I
- Verificado em: `fontes/leis/03-lgpd-lei-13709-2018-compilado.html`
- Data da verificação: 2026-08-21
- Hipótese de incidência: o operador responde solidariamente quando descumprir a legislação ou deixar de seguir instruções lícitas do controlador

**Redação proposta**

> **7. Proteção de dados pessoais**
>
> 7.1. A CONTRATANTE é a controladora dos dados pessoais tratados no sistema. A CONTRATADA atua como operadora e trata os dados exclusivamente conforme instruções documentadas da CONTRATANTE, registradas no Anexo III.
>
> 7.2. A CONTRATADA não subcontrata suboperador sem autorização prévia e por escrito da CONTRATANTE. Autorizada a subcontratação, a CONTRATADA impõe ao suboperador, por contrato, as mesmas obrigações previstas nesta cláusula, e permanece integralmente responsável perante a CONTRATANTE pelos atos dele.
>
> 7.3. A CONTRATADA mantém e disponibiliza à CONTRATANTE a relação atualizada dos suboperadores autorizados, com nome, finalidade e localização do tratamento.
>
> 7.4. Tomando conhecimento de incidente de segurança que envolva dados pessoais tratados por força deste contrato, a CONTRATADA comunica a CONTRATANTE **em até 24 (vinte e quatro) horas**, com as informações de que dispuser, e complementa em até 72 horas com a descrição da natureza dos dados afetados, os titulares envolvidos, os riscos e as medidas adotadas.
>
> 7.5. A CONTRATADA presta à CONTRATANTE, sem custo adicional, a cooperação necessária para o atendimento de pedido de titular, de requisição da Autoridade Nacional de Proteção de Dados e para a elaboração de relatório de impacto.
>
> 7.6. A CONTRATADA adota as medidas de segurança do art. 46 da Lei nº 13.709/2018 e as descreve no Anexo III.
>
> 7.7. Encerrado o contrato, a CONTRATADA devolve ou elimina, à escolha da CONTRATANTE, os dados pessoais a que teve acesso, no prazo de 30 dias, e apresenta declaração de eliminação, ressalvada a conservação exigida por obrigação legal.

**O que muda na prática**

O prazo de comunicação cai de 90 dias para 24 horas, o que é a diferença entre a contratante conseguir e não conseguir cumprir o próprio prazo regulatório. A subcontratação passa a depender de autorização, e a lista de suboperadores fica disponível - sem isso a controladora não consegue nem responder a um pedido de titular sobre com quem seus dados foram compartilhados. A 7.7 fecha uma lacuna do contrato original, que não diz o que acontece com os dados quando o contrato acaba.

---

### Cláusula 8 - Garantia

**Texto original**

> A CONTRATADA corrigirá, sem custo, defeitos de conformidade identificados em até 90 dias contados de cada entrega homologada.

**Classificação:** INTERPRETAÇÃO

**Risco:** Médio

**Apontamento**

Noventa dias de garantia por entrega é prazo curto para software de roteirização, e o problema não é o número isolado, é a combinação com a cláusula 2. Como a garantia corre de cada entrega homologada e a homologação pode ocorrer por silêncio em 5 dias úteis, o primeiro sprint pode ter a garantia esgotada antes de o sistema entrar em operação real. Defeito de roteirização costuma aparecer em uso, com volume e dados reais, não em homologação.

O contrato também não distingue defeito de conformidade de evolução funcional, o que é a origem mais comum de conflito nesse tipo de contrato: sem a distinção, toda correção vira negociação sobre se é bug ou escopo novo.

Não se trata de nulidade. Entre empresas o prazo de garantia é livremente pactuado. É risco de execução, e é ajustável.

**Fundamento**

- Norma: Código Civil, art. 422
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Hipótese de incidência: a boa-fé objetiva na execução ampara a leitura de que a garantia deve ser útil, e não esvaziada pela contagem a partir de homologação tácita

- Norma: Lei nº 9.609/1998, art. 8º
- Verificado em: `fontes/leis/06-lei-software-9609-1998.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Hipótese de incidência: o artigo trata do dever de assegurar aos usuários a prestação de serviços técnicos complementares durante o prazo de validade técnica da versão comercializada. Aplica-se a programa comercializado no mercado, e o enquadramento do software sob encomenda nessa hipótese não é evidente. Por isso entra como referência de contexto, e não como fundamento de obrigação - ver a pendência nº 2

**Redação proposta**

> **8. Garantia**
>
> 8.1. A CONTRATADA corrige, sem custo, os defeitos de conformidade do sistema pelo prazo de 12 (doze) meses contados da homologação da última entrega, e não de cada entrega isolada.
>
> 8.2. Considera-se defeito de conformidade o comportamento divergente do especificado no Anexo I. Alteração de requisito, funcionalidade nova e adaptação a mudança externa não são defeito e seguem a cláusula de escopo adicional.
>
> 8.3. A CONTRATADA responde a chamado de defeito que impeça o uso do sistema em até 8 horas úteis, e aos demais em até 3 dias úteis.
>
> 8.4. O prazo de garantia suspende-se enquanto durar a correção de defeito comunicado dentro dele.

**O que muda na prática**

A garantia passa a correr da última entrega, o que impede que o primeiro sprint fique descoberto antes de o sistema existir por inteiro. A 8.2 é a que mais reduz atrito no dia a dia: define bug por divergência em relação ao anexo, e tira a discussão do terreno da opinião.

---

### Cláusula 9 - Limitação de responsabilidade

**Texto original**

> A responsabilidade total da CONTRATADA por perdas e danos decorrentes deste contrato fica limitada ao valor efetivamente pago nos 12 meses anteriores ao evento, excluídos lucros cessantes e danos indiretos.
>
> A limitação não se aplica em caso de dolo, culpa grave ou violação de confidencialidade.

**Classificação:** -

**Risco:** -

**Apontamento**

Sem apontamento. Esta é a cláusula que mais se parece com as que costumam ser anuladas, e é válida aqui. A vedação de cláusula que exonere ou atenue a obrigação de indenizar está no Código de Defesa do Consumidor, e não há relação de consumo neste contrato, conforme a premissa declarada na seção 2. Entre empresas, em contrato paritário, a limitação de responsabilidade é lícita e usual, e cumpre função econômica reconhecida: permite à fornecedora precificar o risco.

A redação ainda traz a ressalva que a boa técnica recomenda, afastando a limitação em caso de dolo, culpa grave e violação de confidencialidade. Sem ela a cláusula seria discutível mesmo entre empresas, porque limitação que abarque o dolo esbarra na boa-fé objetiva.

Uma observação de negociação, sem natureza de achado: a contratante pode querer excluir também da limitação as perdas decorrentes de violação de propriedade intelectual de terceiro e as sanções administrativas por incidente de proteção de dados imputável à contratada. É pauta comercial, não correção jurídica.

---

### Cláusula 10 - Rescisão

**Texto original**

> Qualquer parte pode rescindir imediatamente, sem qualquer ônus, motivo ou aviso prévio, a qualquer tempo.
>
> Rescindido o contrato, a CONTRATANTE perde o direito ao código já produzido e não entregue, e não faz jus a qualquer restituição das parcelas já pagas.

**Classificação:** FATO LEGAL

**Risco:** Alto

**Apontamento**

Dois problemas, e o segundo é o mais sério do contrato.

**Rescisão imediata sem aviso.** A resilição unilateral opera mediante denúncia notificada à outra parte, e o Código Civil impõe prazo compatível quando uma das partes fez investimentos consideráveis para a execução. Um contrato de R$ 348.000,00 com equipe alocada em sprints é exatamente a hipótese: a contratada dimensiona time para o projeto, e a contratante reorganiza sua operação em torno da entrega. Rescisão sem aviso, embora aparentemente simétrica, é desequilibrada na prática, porque o dano de uma parada abrupta recai de forma muito diferente sobre cada lado.

**Perda do código somada à retenção das parcelas.** Aqui a cláusula produz enriquecimento sem causa. A contratante paga parcelas mensais, a contratada produz código, e na rescisão a contratada fica com o dinheiro e com o código produzido e não entregue. Não há contraprestação para o valor retido. A cláusula 4 atribui a titularidade do código desenvolvido à contratante, e esta cláusula 10 a retira sem devolver o preço - as duas cláusulas do mesmo contrato dizem coisas incompatíveis sobre o mesmo objeto.

**Fundamento**

- Norma: Código Civil, art. 473, caput e parágrafo único
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`, confirmado EM DIA no relatório de 2026-08-21
- Data da verificação: 2026-08-21
- Hipótese de incidência: contrato de execução continuada regido pelo Código Civil, com investimento em alocação de equipe, o que atrai o parágrafo único
- Transcrição:

> Art. 473. A resilição unilateral, nos casos em que a lei expressa ou implicitamente o permita, opera mediante denúncia notificada à outra parte.
> Parágrafo único. Se, porém, dada a natureza do contrato, uma das partes houver feito investimentos consideráveis para a sua execução, a denúncia unilateral só produzirá efeito depois de transcorrido prazo compatível com a natureza e o vulto dos investimentos.

- Norma: Código Civil, art. 884
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`
- Data da verificação: 2026-08-21
- Hipótese de incidência: a retenção de parcelas pagas sem entrega da contraprestação correspondente configura acréscimo patrimonial sem causa jurídica
- Transcrição:

> Art. 884. Aquele que, sem justa causa, se enriquecer à custa de outrem, será obrigado a restituir o indevidamente auferido, feita a atualização dos valores monetários.

- Norma: Código Civil, art. 422
- Verificado em: `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html`
- Data da verificação: 2026-08-21
- Hipótese de incidência: a boa-fé objetiva rege a execução, e a contradição entre as cláusulas 4 e 10 sobre a titularidade do código a contraria

**Redação proposta**

> **10. Rescisão**
>
> 10.1. Qualquer parte pode rescindir sem justa causa mediante aviso prévio escrito de 30 (trinta) dias.
>
> 10.2. Qualquer parte pode rescindir por justa causa, com efeito imediato, se a outra descumprir obrigação relevante e não sanar em 15 dias contados da notificação.
>
> 10.3. Rescindido o contrato por qualquer motivo, a CONTRATADA entrega à CONTRATANTE, em até 15 dias, todo o código-fonte produzido até a data, ainda que incompleto ou não homologado, com a documentação existente e as instruções de build.
>
> 10.4. Faz-se o acerto de contas pelo trabalho efetivamente realizado até a rescisão, apurado pelos entregáveis concluídos e pelo percentual verificável do sprint em curso. Valor pago a maior é restituído à CONTRATANTE em 15 dias, com correção; valor devido a menor é pago à CONTRATADA no mesmo prazo.
>
> 10.5. A titularidade prevista na cláusula 4 alcança todo o código produzido até a rescisão, na proporção do que houver sido pago nos termos da cláusula 10.4.
>
> 10.6. Rescindido por justa causa dada pela CONTRATADA, esta não faz jus a remuneração pelo sprint em curso e restitui os valores dele.
>
> 10.7. Permanecem em vigor após a rescisão as cláusulas 4, 6, 7 e 9.

**O que muda na prática**

A contratante deixa de correr o risco de pagar por código que não recebe. A 10.3 é o item central: o código sai da contratada em qualquer cenário de rescisão, o que é a única forma de a cláusula 4 significar alguma coisa. A 10.4 substitui a perda total por acerto proporcional, que é o que a lei imporia de qualquer forma se a cláusula original fosse questionada. E a 10.7 evita a dúvida sobre a sobrevivência da confidencialidade e da proteção de dados, que hoje o contrato não resolve.

---

### Cláusula 11 - Foro

**Texto original**

> Fica eleito o foro da comarca de Porto Alegre/RS, com renúncia a qualquer outro, por mais privilegiado que seja.

**Classificação:** -

**Risco:** -

**Apontamento**

Sem apontamento. Eleição de foro com renúncia a outro é cláusula válida em contrato paritário entre empresas, e a fórmula empregada é a de uso corrente. Não incide aqui a vedação do art. 51, IV e XVII, do CDC, nem o direito de propor a ação no domicílio do autor do art. 101, I, porque ambos pressupõem consumidor, e a premissa declarada na seção 2 afasta essa condição.

A comarca eleita é a da sede da contratada, o que é matéria de negociação e não de validade. A contratante pode preferir o foro de sua própria sede ou um foro neutro, e nada impede que se pactue arbitragem, que em contratos desse valor costuma ser alternativa razoável. Nenhuma dessas opções é exigência jurídica.

---

## 4. Cláusulas ausentes

| Tema | Por quê | Fundamento | Severidade |
|---|---|---|---|
| Consequência do atraso na entrega | O contrato fixa cronograma e não diz o que acontece se ele não for cumprido. Sem multa, retenção ou reequilíbrio, o prazo é recomendação | Código Civil, arts. 389 e 475 - `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html` | Alta |
| Garantia de não violação de direito de terceiro | A cláusula 4 traz declaração sobre componentes, não garantia com consequência. Tratado na redação proposta 4.4 e 4.5 | Lei nº 9.609/1998, art. 2º - `fontes/leis/06-lei-software-9609-1998.html` | Alta |
| Destino dos dados pessoais ao fim do contrato | A cláusula 7 não diz se a operadora devolve ou elimina. Tratado na redação proposta 7.7 | LGPD, arts. 15 e 16 - `fontes/leis/03-lgpd-lei-13709-2018-compilado.html` | Alta |
| Entrega de código-fonte e ambiente para continuidade | Sem previsão de entrega de repositório, credenciais e instruções de build, a titularidade da cláusula 4 não se materializa | Código Civil, art. 422 | Média |
| Manutenção e suporte após a garantia | Não há previsão de continuidade, preço nem prazo. A contratante fica sem cobertura no dia seguinte ao fim da garantia | Código Civil, art. 422 | Média |
| Níveis de serviço | Se houver operação assistida, faltam indicadores, prazos e consequências | - | Média |
| Escopo adicional e controle de mudanças | Não há procedimento para requisito novo, o que joga toda alteração para negociação caso a caso | Código Civil, art. 422 | Média |
| Cessão do contrato e reorganização societária | Não há regra sobre transferência da posição contratual | Código Civil, art. 299 | Baixa |

## 5. Campos a preencher

- [ ] `[PREENCHER]` - Solicitante da revisão, no cabeçalho deste documento.
- [ ] **Corrigir o CNPJ da CONTRATADA.** O contrato informa 33.204.881/0001-236, com 15 dígitos. CNPJ tem 14. Erro material que compromete a qualificação da parte e precisa ser corrigido antes da assinatura, conferindo o número no comprovante de inscrição.
- [ ] `[PREENCHER]` - Anexo I: especificação funcional e critérios de aceite, referidos nas cláusulas 1 e 2 e essenciais à redação proposta 8.2.
- [ ] `[PREENCHER]` - Anexo II: relação de componentes de terceiros e licenças, referido na cláusula 4.
- [ ] `[PREENCHER]` - Anexo III: instruções documentadas de tratamento e medidas de segurança, criado pela redação proposta 7.1 e 7.6.
- [ ] `[PREENCHER]` - Quais dados pessoais o sistema trata, de quais titulares. A cláusula 7 pressupõe tratamento sem descrevê-lo.
- [ ] `[PREENCHER]` - Se haverá operação assistida ou hospedagem pela contratada após a entrega, o que define a necessidade de níveis de serviço.
- [ ] `[PREENCHER]` - Percentual de multa por atraso, para a cláusula ausente correspondente.

## 6. Requisitos para implementação

Este contrato não gera requisitos de produto, mas gera obrigações operacionais que precisam existir antes da assinatura ou logo depois.

- [ ] Produzir os Anexos I, II e III antes da assinatura. Sem o Anexo I não há critério de homologação nem definição de defeito.
- [ ] Conferir, item a item, se as licenças do Anexo II são compatíveis com uso comercial sem obrigação de abertura de código.
- [ ] Definir o procedimento interno de comunicação de incidente da contratada, compatível com o prazo de 24 horas da redação proposta 7.4.
- [ ] Levantar a relação de suboperadores já utilizados pela contratada, para autorização inicial nos termos da 7.2.
- [ ] Definir o repositório e o mecanismo de entrega contínua do código à contratante, para viabilizar a cláusula 10.3.
- [ ] Mapear quais dados pessoais o sistema tratará, e avaliar a necessidade de relatório de impacto.

## 7. Pendências de validação

Dois pontos não puderam ser fechados em fonte oficial. Encaminhados em `CONSULTA-ADVOGADO-contrato-desenvolvimento-2026-08-21.md`.

| # | Questão | Por que não foi possível concluir | Impacto |
|---|---|---|---|
| 1 | A contratante pode ser considerada consumidora por equiparação, atraindo o CDC apesar de adquirir o software como insumo de sua atividade-fim? | A análise adotou a premissa de que não há relação de consumo, com base nos arts. 2º e 3º do CDC. A teoria finalista mitigada admite a aplicação do CDC a pessoa jurídica vulnerável, e a aferição dessa vulnerabilidade é casuística e jurisprudencial, matéria fora da biblioteca local | Define a validade das cláusulas 9 e 11 e do reajuste da cláusula 3. Se o CDC incidir, a limitação de responsabilidade e o foro eleito passam a ser discutíveis |
| 2 | O art. 8º da Lei nº 9.609/1998 obriga a contratada a prestar serviços técnicos complementares neste contrato, ou alcança apenas software comercializado no mercado? | O artigo se dirige a quem comercializa programa de computador, e o enquadramento de desenvolvimento sob encomenda nessa hipótese não é evidente no texto legal. A biblioteca local traz a lei, não a orientação sobre seu alcance | Define se existe obrigação legal de suporte além da garantia contratual, o que muda a necessidade e o preço da cláusula de manutenção apontada como ausente |

## 8. Fontes verificadas

Biblioteca local conferida contra a fonte oficial em 2026-08-21, com resultado 29/29 EM DIA, conforme `STATUS-FONTES.md`.

| Norma / ato | Artigo | Onde foi verificado | Data |
|---|---|---|---|
| Código Civil - Lei nº 10.406/2002 | arts. 111, 299, 389, 422, 473, 475 e 884 | `fontes/leis/01-codigo-civil-lei-10406-2002-compilada.html` | 2026-08-21 |
| CDC - Lei nº 8.078/1990 | arts. 2º, 3º, 51 e 101 (para afastar a incidência) | `fontes/leis/02-cdc-lei-8078-1990-compilado.html` | 2026-08-21 |
| LGPD - Lei nº 13.709/2018 | arts. 15, 16, 39, 42, 46 e 48 | `fontes/leis/03-lgpd-lei-13709-2018-compilado.html` | 2026-08-21 |
| Lei de Software - Lei nº 9.609/1998 | arts. 2º e 8º | `fontes/leis/06-lei-software-9609-1998.html` | 2026-08-21 |
| Lei de Direitos Autorais - Lei nº 9.610/1998 | art. 27 (aplicação restringida pela norma especial) | `fontes/leis/07-direitos-autorais-9610-1998.html` | 2026-08-21 |
| Resolução CD/ANPD nº 15/2024 | comunicação de incidente | `fontes/anpd/41-resolucao-anpd-15-2024-incidentes.html` | 2026-08-21 |
| ANPD - Guia sobre Agentes de Tratamento e Encarregado | integral | `fontes/anpd/32-guia-agentes-tratamento-encarregado.pdf` | 2026-08-21 |

## 9. Documento revisado - texto integral

Consolidação com as redações propostas aplicadas. As cláusulas 1, 3, 5, 6, 9 e 11 permanecem como no original, sem alteração.

---

**CONTRATO DE DESENVOLVIMENTO DE SOFTWARE SOB ENCOMENDA**

**CONTRATANTE:** Norvia Logística S.A., CNPJ 09.377.412/0001-58, com sede na Avenida Nações Unidas, 12.399, conjunto 81, São Paulo/SP.

**CONTRATADA:** Bitola Software Ltda., CNPJ [PREENCHER - o número informado no original tem 15 dígitos e precisa ser conferido], com sede na Rua Padre Chagas, 79, sala 402, Porto Alegre/RS.

Ambas empresárias, no exercício de suas atividades, celebram o presente contrato, que se rege pelo Código Civil, pela Lei nº 9.609/1998, pela Lei nº 9.610/1998 e pela Lei nº 13.709/2018.

**Cláusula 1 - Objeto.** A CONTRATADA desenvolverá, sob encomenda, o sistema de roteirização descrito no Anexo I, conforme especificação funcional ali aprovada pela CONTRATANTE.

**Cláusula 2 - Prazo, entregas e homologação.**

2.1. A entrega ocorre em 3 sprints de 4 semanas, conforme cronograma do Anexo I.

2.2. Cada entrega é acompanhada de relatório indicando os itens do Anexo I contemplados e o resultado dos testes automatizados executados.

2.3. A CONTRATANTE tem 10 (dez) dias úteis para homologar, contados do recebimento do relatório. Considera-se conforme a entrega que atenda aos requisitos do Anexo I e passe nos critérios de aceite ali definidos.

2.4. Decorrido o prazo sem manifestação, a entrega é considerada homologada. A homologação tácita não afasta a garantia da cláusula 8 nem a responsabilidade por defeito não aparente ao tempo da homologação.

2.5. Havendo recusa, a CONTRATANTE indica por escrito os itens não atendidos, e a CONTRATADA tem 10 dias úteis para corrigir, sem custo adicional e sem prorrogação do cronograma total, salvo se a recusa for improcedente.

2.6. O atraso imputável à CONTRATADA sujeita-a a multa de [PREENCHER]% do valor do sprint por semana de atraso, limitada a [PREENCHER]% do valor total do contrato, sem prejuízo da resolução por justa causa.

**Cláusula 3 - Preço.** R$ 348.000,00, em 6 parcelas mensais de R$ 58.000,00. Reajuste anual pelo IPCA caso o contrato se estenda por mais de 12 meses. Tributos incidentes na forma da lei, cada parte arcando com os de sua responsabilidade.

**Cláusula 4 - Propriedade intelectual.**

4.1. Os direitos patrimoniais sobre o código-fonte desenvolvido sob encomenda neste contrato, sobre os artefatos de build e sobre a documentação técnica correspondente ficam de titularidade exclusiva da CONTRATANTE, em caráter definitivo, para todo o território e sem limitação de prazo, desde o pagamento da parcela correspondente à entrega.

4.2. Permanecem com os autores, nos termos do art. 2º, § 1º, da Lei nº 9.609/1998, o direito de reivindicar a paternidade do programa e o de opor-se a alteração não autorizada que implique deformação, mutilação ou modificação capaz de prejudicar sua honra ou reputação. A CONTRATANTE não fica impedida de alterar, evoluir, integrar ou descontinuar o sistema no curso normal de seu uso.

4.3. Ferramentas, componentes e bibliotecas de uso geral preexistentes de titularidade da CONTRATADA não são cedidos. A CONTRATADA concede à CONTRATANTE licença perpétua, irrevogável, gratuita e transferível para usá-los na medida necessária à operação e à evolução do sistema entregue, e os relaciona no Anexo II.

4.4. A CONTRATADA garante que o código entregue não viola direito de propriedade intelectual de terceiro e que os componentes de código aberto do Anexo II têm licenças compatíveis com o uso comercial pretendido pela CONTRATANTE, sem obrigação de abertura do código proprietário.

4.5. A CONTRATADA responde por reclamação de terceiro fundada em violação de propriedade intelectual do código entregue, assumindo a defesa e arcando com condenação e custos, desde que notificada em prazo que permita a defesa.

**Cláusula 5 - Equipe.** A CONTRATADA aloca equipe própria e responde por ela. A CONTRATANTE poderá solicitar a substituição de qualquer profissional, justificadamente. Durante a vigência e por 24 meses após o término, nenhuma das partes contratará profissional da outra que tenha atuado neste projeto, salvo com anuência escrita. O descumprimento sujeita a parte a multa de 12 vezes a última remuneração do profissional.

**Cláusula 6 - Confidencialidade.** As partes manterão sigilo sobre informações técnicas e comerciais a que tiverem acesso, por prazo indeterminado, ainda que após o término do contrato.

**Cláusula 7 - Proteção de dados pessoais.**

7.1. A CONTRATANTE é a controladora dos dados pessoais tratados no sistema. A CONTRATADA atua como operadora e trata os dados exclusivamente conforme instruções documentadas da CONTRATANTE, registradas no Anexo III.

7.2. A CONTRATADA não subcontrata suboperador sem autorização prévia e por escrito da CONTRATANTE. Autorizada a subcontratação, a CONTRATADA impõe ao suboperador, por contrato, as mesmas obrigações previstas nesta cláusula, e permanece integralmente responsável perante a CONTRATANTE pelos atos dele.

7.3. A CONTRATADA mantém e disponibiliza à CONTRATANTE a relação atualizada dos suboperadores autorizados, com nome, finalidade e localização do tratamento.

7.4. Tomando conhecimento de incidente de segurança que envolva dados pessoais tratados por força deste contrato, a CONTRATADA comunica a CONTRATANTE em até 24 (vinte e quatro) horas, com as informações de que dispuser, e complementa em até 72 horas com a descrição da natureza dos dados afetados, os titulares envolvidos, os riscos e as medidas adotadas.

7.5. A CONTRATADA presta à CONTRATANTE, sem custo adicional, a cooperação necessária para o atendimento de pedido de titular, de requisição da Autoridade Nacional de Proteção de Dados e para a elaboração de relatório de impacto.

7.6. A CONTRATADA adota as medidas de segurança do art. 46 da Lei nº 13.709/2018 e as descreve no Anexo III.

7.7. Encerrado o contrato, a CONTRATADA devolve ou elimina, à escolha da CONTRATANTE, os dados pessoais a que teve acesso, no prazo de 30 dias, e apresenta declaração de eliminação, ressalvada a conservação exigida por obrigação legal.

**Cláusula 8 - Garantia.**

8.1. A CONTRATADA corrige, sem custo, os defeitos de conformidade do sistema pelo prazo de 12 (doze) meses contados da homologação da última entrega.

8.2. Considera-se defeito de conformidade o comportamento divergente do especificado no Anexo I. Alteração de requisito, funcionalidade nova e adaptação a mudança externa não são defeito e seguem a cláusula de escopo adicional.

8.3. A CONTRATADA responde a chamado de defeito que impeça o uso do sistema em até 8 horas úteis, e aos demais em até 3 dias úteis.

8.4. O prazo de garantia suspende-se enquanto durar a correção de defeito comunicado dentro dele.

**Cláusula 9 - Limitação de responsabilidade.** A responsabilidade total da CONTRATADA por perdas e danos decorrentes deste contrato fica limitada ao valor efetivamente pago nos 12 meses anteriores ao evento, excluídos lucros cessantes e danos indiretos. A limitação não se aplica em caso de dolo, culpa grave ou violação de confidencialidade.

**Cláusula 10 - Rescisão.**

10.1. Qualquer parte pode rescindir sem justa causa mediante aviso prévio escrito de 30 (trinta) dias.

10.2. Qualquer parte pode rescindir por justa causa, com efeito imediato, se a outra descumprir obrigação relevante e não sanar em 15 dias contados da notificação.

10.3. Rescindido o contrato por qualquer motivo, a CONTRATADA entrega à CONTRATANTE, em até 15 dias, todo o código-fonte produzido até a data, ainda que incompleto ou não homologado, com a documentação existente e as instruções de build.

10.4. Faz-se o acerto de contas pelo trabalho efetivamente realizado até a rescisão, apurado pelos entregáveis concluídos e pelo percentual verificável do sprint em curso. Valor pago a maior é restituído à CONTRATANTE em 15 dias, com correção; valor devido a menor é pago à CONTRATADA no mesmo prazo.

10.5. A titularidade prevista na cláusula 4 alcança todo o código produzido até a rescisão, na proporção do que houver sido pago nos termos da cláusula 10.4.

10.6. Rescindido por justa causa dada pela CONTRATADA, esta não faz jus a remuneração pelo sprint em curso e restitui os valores dele.

10.7. Permanecem em vigor após a rescisão as cláusulas 4, 6, 7 e 9.

**Cláusula 11 - Foro.** Fica eleito o foro da comarca de Porto Alegre/RS, com renúncia a qualquer outro, por mais privilegiado que seja.

**Anexos:** I - especificação funcional e critérios de aceite. II - componentes de terceiros e licenças. III - instruções de tratamento de dados e medidas de segurança.

---

## Pontos pendentes de parecer jurídico

Este documento tem **2 pontos** que não foi possível validar em fonte oficial. Os demais foram verificados e estão relacionados em "Fontes verificadas".

Encaminhado para parecer em `CONSULTA-ADVOGADO-contrato-desenvolvimento-2026-08-21.md`.

| # | Ponto | Onde aparece | Por que não foi possível concluir |
|---|---|---|---|
| 1 | Possível incidência do CDC por equiparação, apesar de a contratante adquirir o software como insumo | Premissa da seção 2, e cláusulas 3, 9 e 11 | A teoria finalista mitigada depende de aferição casuística de vulnerabilidade, matéria jurisprudencial não coberta pela biblioteca local |
| 2 | Alcance do art. 8º da Lei nº 9.609/1998 sobre desenvolvimento sob encomenda | Cláusula 8 e cláusula ausente de manutenção | O artigo se dirige a quem comercializa programa de computador, e o enquadramento do software sob encomenda não é evidente no texto legal |

**Não utilize o documento nesses pontos específicos antes do parecer.** O restante do texto está verificado.
