# Consulta jurídica - Termos de Uso QuadraJá

| | |
|---|---|
| Solicitante | [PREENCHER] |
| Data | 2026-08-21 |
| Documento relacionado | `testes/termos-de-uso-exemplo-REVISADO-2026-08-21.md` |
| Questões | 3 |
| Prazo desejado | [PREENCHER] |

## Contexto

QuadraJá é um aplicativo de reserva de quadras e de organização de torneios amadores de padel. O usuário cria conta, reserva quadra avulsa e se inscreve em torneios, com pagamento no ato da inscrição. A relação é de consumo.

Há menores no ambiente: adolescentes disputam torneios, inscritos por pais ou responsáveis. Há registro em foto e vídeo dos eventos, com interesse em usar parte desse material em divulgação.

Os Termos de Uso originais foram revisados e reescritos. As nove cláusulas tinham apontamento, quase todas por nulidade evidente sob o CDC - renúncia a indenização, ausência total de reembolso, alteração retroativa, cessão perpétua de imagem. Esses pontos foram resolvidos com fundamento em texto legal verificado e não são objeto desta consulta.

O que segue são os três pontos em que a análise parou antes de concluir.

## O que já foi apurado

| Ponto | Conclusão | Fonte | Data |
|---|---|---|---|
| Caixa de aceite pré-marcada | Não produz consentimento válido nem vincula o consumidor | CDC, art. 46; LGPD, art. 5º, XII, e art. 8º, §§ 2º e 3º - `fontes/leis/02-cdc...html` e `fontes/leis/03-lgpd...html` | 2026-08-21 |
| Coleta de endereço residencial e CPF no cadastro | Excessiva para a finalidade | LGPD, art. 6º, III | 2026-08-21 |
| Menor contratando sozinho | Contrato nulo (menor de 16) ou anulável (16 a 18) | Código Civil, arts. 3º e 4º, I | 2026-08-21 |
| Autodeclaração de idade como única verificação | Não atende ao dever de esforços razoáveis para verificar o consentimento do responsável | LGPD, art. 14, § 5º | 2026-08-21 |
| Vedação de autodeclaração do ECA Digital | **Não** se aplica a este app: alcança conteúdo pornográfico ou proibido em lei, e produtos vedados a menores | Lei nº 15.211/2025, art. 9º, §§ 1º e 2º; Decreto nº 12.880/2026, arts. 17 a 19 | 2026-08-21 |
| Vigência do ECA Digital | Lei em vigor desde 17/03/2026; Decreto desde 18/03/2026 | Lei nº 15.211/2025, art. 41-A; Decreto nº 12.880/2026, art. 54 | 2026-08-21 |
| Finalidade genérica e retenção indeterminada | Autorização genérica é nula; retenção indefinida contraria o regime de término | LGPD, art. 8º, § 4º, e arts. 15 e 16 | 2026-08-21 |
| Não devolução mesmo com cancelamento pela organização | Cláusula nula | CDC, art. 51, II, e art. 35, III | 2026-08-21 |
| Taxa de serviço revelada só na confirmação | Descumpre o dever de informação e a regra de discriminação de despesas | CDC, arts. 6º, III, e 31; Decreto nº 7.962/2013, art. 2º, IV | 2026-08-21 |
| Exoneração de responsabilidade por lesão física | Cláusula nula; responsabilidade objetiva do fornecedor de serviços | CDC, arts. 14, 25 e 51, I | 2026-08-21 |
| Alteração unilateral com efeito retroativo | Cláusula nula; atinge ato jurídico perfeito | CDC, art. 51, XIII; CF, art. 5º, XXXVI | 2026-08-21 |
| Exclusão de responsabilidade por incidente de dados | Não produz efeito; hipóteses de exclusão são fechadas em lei | LGPD, arts. 42 e 43 | 2026-08-21 |
| Foro da sede contra consumidor | Não prevalece; consumidor pode acionar no próprio domicílio | CDC, art. 101, I, e art. 51, IV e XVII | 2026-08-21 |

Biblioteca local conferida contra a fonte oficial em 2026-08-21: 29 de 29 fontes EM DIA, conforme `STATUS-FONTES.md`.

---

## Questões

### Questão 1 - Arrependimento em inscrição de torneio com data marcada

**Pergunta**

O prazo de 7 dias do art. 49 do CDC se aplica à inscrição em torneio de padel com data definida, contratada pelo aplicativo? Em caso afirmativo, quando a inscrição é feita a menos de 7 dias do início, o direito se extingue com o começo do torneio, subsiste integralmente, ou comporta retenção proporcional?

**Por que o agente não concluiu**

- [x] Mais de uma interpretação plausível
- [x] Exige juízo sobre validade no caso concreto

O art. 49 não abre exceção para serviço com data determinada, e a biblioteca local reúne texto legal, não jurisprudência. A questão é de aplicação da norma a um serviço cuja fruição tem data marcada e cuja organização gera custo antes do evento.

**Interpretações possíveis**

| # | Interpretação | Fundamento | Risco se adotada |
|---|---|---|---|
| A | O art. 49 se aplica sem restrição. Devolução integral em 7 dias, qualquer que seja a proximidade do torneio. | Literalidade do art. 49; ausência de exceção legal | Inscrição de última hora vira opção gratuita: o usuário garante a vaga e desiste sem custo depois de o organizador já ter fechado chaves, contratado arbitragem e comprado premiação. |
| B | Aplica-se, mas o exercício se limita ao início do torneio, porque a fruição começa ali. É a solução adotada na cláusula 5.2 proposta. | Art. 49 combinado com a natureza do serviço de data certa | Se a interpretação não se sustentar, a cláusula restringe direito do consumidor e pode ser considerada abusiva pelo art. 51, I e IV. |
| C | Não se aplica, por analogia ao entendimento sobre ingresso de evento com data definida. | Construção por analogia | Risco maior. Se estiver errada, a empresa nega direito básico de forma sistemática, com exposição a ação coletiva e a autuação de Procon. |

**Impacto prático da resposta**

Define o desenho da tela de cancelamento e a regra do gateway de pagamento. Na hipótese A, a escala de retenção da cláusula 5.3 só pode começar a valer depois do sétimo dia, e inscrições de última hora ficam sem retenção nenhuma. Na hipótese B, o corte é o início do torneio. Também define o texto do resumo pré-contratual da cláusula 1.3.

**Urgência:** Alta - a regra precisa estar definida antes de abrir inscrição paga.

**Trecho relacionado**

> 5.2. **Arrependimento.** O usuário pode desistir da inscrição em até 7 (sete) dias corridos contados da contratação, sem precisar justificar, e recebe de volta a integralidade do valor pago, com correção monetária, no mesmo meio de pagamento, em até 10 dias. Se o torneio começar antes de esgotado esse prazo, a desistência pode ser exercida até o início do torneio.

---

### Questão 2 - Extensão válida da autorização de uso de imagem

**Pergunta**

Em contrato de adesão de consumo, qual a extensão máxima que uma autorização gratuita de uso de imagem pode ter sem esbarrar no art. 11 do Código Civil? Especificamente: o prazo de 2 anos e o território nacional propostos na cláusula 4.2 são adequados, insuficientes ou já excessivos? E a autorização precisa ser revogável a qualquer tempo mesmo quando o prazo é determinado?

**Por que o agente não concluiu**

- [x] Mais de uma interpretação plausível
- [x] Exige juízo sobre validade no caso concreto

O art. 11 estabelece que os direitos da personalidade são irrenunciáveis e que seu exercício não pode sofrer limitação voluntária, salvo previsão legal. O alcance dessa regra sobre a autorização de uso de imagem - se veda apenas a renúncia perpétua e ilimitada, ou se impõe revogabilidade permanente a qualquer autorização - é questão de doutrina e jurisprudência, que a biblioteca local não cobre.

O que já está resolvido: a cláusula original, com cessão "universal, definitiva, irrevogável e irrestrita, para qualquer finalidade, sem limite de prazo ou território", é inválida. O que se pergunta é onde fica o limite do que vale.

**Interpretações possíveis**

| # | Interpretação | Fundamento | Risco se adotada |
|---|---|---|---|
| A | O art. 11 veda a renúncia, não a autorização delimitada. Autorização com objeto, prazo e território definidos é válida e vincula pelo prazo. | Distinção entre disposição do aspecto patrimonial e renúncia ao direito | Se prevalecer o entendimento oposto, a empresa terá usado imagem confiando em autorização que o titular podia revogar, com risco indenizatório. |
| B | O art. 11 impõe revogabilidade a qualquer tempo, independentemente do prazo pactuado. A autorização vale até ser revogada. | Leitura de que a limitação voluntária ao exercício é sempre precária | Planejamento de campanha fica sujeito a retirada. É a hipótese que a cláusula 4.4 já acomoda, então o custo de adotá-la preventivamente é baixo. |
| C | A validade depende da onerosidade: autorização gratuita em contrato de adesão exige interpretação restritiva, e o prazo de 2 anos pode ser considerado excessivo. | CDC, art. 47 (interpretação mais favorável ao consumidor) | Pode exigir encurtar o prazo ou remunerar o uso, com impacto operacional. |

**Impacto prático da resposta**

Define o prazo da cláusula 4.2, se a cláusula 4.4 basta como salvaguarda, e se o acervo de imagens precisa ser purgado ao fim de cada período. Define também se a autorização específica de uso publicitário da cláusula 4.3 precisa prever remuneração.

Não abrange menores: a cláusula 4.5, "d", já veda uso comercial de imagem de menor por decisão de política interna, mais restritiva do que a lei exige.

**Urgência:** Média - afeta o uso do acervo, não a operação do aplicativo.

**Trecho relacionado**

> 4.2. Ao se inscrever em torneio, o usuário autoriza o uso de sua imagem, voz e nome exclusivamente nesse contexto, nos canais oficiais da QuadraJá e no material de cobertura do próprio evento, pelo prazo de 2 (dois) anos contados do encerramento do torneio, em território nacional.

---

### Questão 3 - Enquadramento no ECA Digital e deveres exigíveis hoje

**Pergunta**

A QuadraJá se enquadra como produto ou serviço "de acesso provável" por crianças e adolescentes, nos termos do art. 5º da Lei nº 15.211/2025? Em caso afirmativo, quais dos deveres dos arts. 10 a 17 são exigíveis desde já, e quais dependem de regulamentação ainda não publicada? Especificamente: é exigível relatório de impacto na forma do art. 16, parágrafo único, II?

**Por que o agente não concluiu**

- [x] Mais de uma interpretação plausível
- [x] Tema com regulamentação em curso

A lei está em vigor desde 17 de março de 2026 e o Decreto nº 12.880/2026 desde 18 de março de 2026 - ambos verificados no Planalto. Mas os dois textos remetem à ANPD e à autoridade administrativa autônoma em vários pontos, e o material da ANPD sobre aferição de idade indica que a segunda etapa de monitoramento, encarregada de definir os demais setores alcançados a partir do nível de risco de cada produto, começaria em agosto de 2026. Está em curso agora, sem orientação definitiva publicada.

A definição legal de "acesso provável" não vem acompanhada de critério objetivo. O que se tem de concreto: o documento original admitia menores participantes e a operação envolve torneios amadores, em que a presença de adolescentes é a regra, não a exceção.

**Interpretações possíveis**

| # | Interpretação | Fundamento | Risco se adotada |
|---|---|---|---|
| A | Enquadra-se, e os deveres dos arts. 5º, 6º, 14, 16 e 17 são autoaplicáveis. O que depende de regulamento é o padrão técnico mínimo, não a obrigação em si. | Lei em vigor, sem cláusula que condicione a eficácia à regulamentação | Investimento em ferramentas de supervisão parental que podem exceder o que a autoridade vier a exigir de um app deste porte e risco. |
| B | Enquadra-se, mas os deveres do Capítulo IV e V são exigíveis apenas na medida do padrão que a autoridade fixar. Até lá, bastam informação ao responsável e conta gerida por ele. | Art. 17, § 1º, remete o padrão mínimo a regulamento | Se a autoridade entender que a obrigação já valia, há exposição a autuação por período pretérito. |
| C | Não se enquadra: o serviço é direcionado a adultos, e o menor participa por meio da conta do responsável. | Leitura restritiva de "acesso provável" | Risco alto. A própria operação prevê menores em torneio, e o enquadramento negativo seria difícil de sustentar. |

**Impacto prático da resposta**

Define o tamanho do trabalho de produto: ferramentas de supervisão parental, limitação de tempo de uso, aviso visível de controles ativos, e se o relatório de impacto para dados de menores é exigível agora. As cláusulas 2.5 a 2.8 propostas cobrem a hipótese B; a hipótese A exige desenvolvimento adicional.

**Urgência:** Alta - a lei já está em vigor, e a segunda etapa de monitoramento da ANPD está em curso.

**Trecho relacionado**

> 2.7. A QuadraJá mantém, em página de acesso livre e independente da contratação, informações sobre os dados que coleta de menores, as finalidades, os riscos, as medidas de segurança e as ferramentas de supervisão parental disponíveis.

---

## Anexos

- `testes/termos-de-uso-exemplo-REVISADO-2026-08-21.md` - revisão completa, com análise cláusula a cláusula, fundamentos transcritos e texto consolidado.
- `testes/termos-de-uso-exemplo.md` - documento original.

## Resposta do advogado

Espaço reservado. A ser preenchido pelo profissional.

### Questão 1 - Arrependimento em inscrição de torneio com data marcada

- **Parecer:**
- **Fundamento:**
- **Ressalvas:**
- **Advogado:** [NOME] - OAB [UF] [NÚMERO]
- **Data:**

### Questão 2 - Extensão válida da autorização de uso de imagem

- **Parecer:**
- **Fundamento:**
- **Ressalvas:**
- **Advogado:** [NOME] - OAB [UF] [NÚMERO]
- **Data:**

### Questão 3 - Enquadramento no ECA Digital e deveres exigíveis hoje

- **Parecer:**
- **Fundamento:**
- **Ressalvas:**
- **Advogado:** [NOME] - OAB [UF] [NÚMERO]
- **Data:**

---

## Como esta consulta foi montada

O levantamento da seção "O que já foi apurado" foi feito por agente automatizado, a partir das fontes oficiais indicadas, com data de verificação em cada linha. A biblioteca de fontes foi conferida contra os portais oficiais em 21/08/2026, com 29 de 29 normas em dia.

As três questões acima são justamente o que o agente **não** conseguiu concluir. O restante do documento foi resolvido e não precisa ser revisto.

Nada aqui é parecer. O parecer é o que se pede.
