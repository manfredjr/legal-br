# Consulta jurídica - Contrato de Desenvolvimento Norvia x Bitola

| | |
|---|---|
| Solicitante | [PREENCHER] |
| Data | 2026-08-21 |
| Documento relacionado | `testes/contrato-desenvolvimento-exemplo-REVISADO-2026-08-21.md` |
| Questões | 2 |
| Prazo desejado | [PREENCHER] |

## Contexto

Contrato de desenvolvimento de software sob encomenda, de R$ 348.000,00, entre a Norvia Logística S.A. (contratante) e a Bitola Software Ltda. (contratada). Objeto: sistema de roteirização de frota, destinado à operação logística da contratante.

O contrato foi revisado. Seis cláusulas tinham apontamento e foram reescritas, com destaque para o regime de proteção de dados, que dava à contratada 90 dias para comunicar incidente à controladora, e para a cláusula de rescisão, que combinava saída sem aviso com perda do código produzido e retenção das parcelas pagas. Esses pontos foram resolvidos com fundamento em texto legal verificado e não são objeto desta consulta.

As duas questões abaixo são as que ficaram em aberto. Ambas dizem respeito ao **alcance** de normas cujo texto está verificado, e não ao conteúdo delas.

## O que já foi apurado

| Ponto | Conclusão | Fonte | Data |
|---|---|---|---|
| Regime aplicável adotado como premissa | Não há relação de consumo; aplica-se o Código Civil, a Lei nº 9.609/1998 e a LGPD | CDC, arts. 2º e 3º - `fontes/leis/02-cdc...html` | 2026-08-21 |
| Limitação de responsabilidade da cláusula 9 | Válida entre empresas, com a ressalva de dolo, culpa grave e confidencialidade que o contrato já traz | Ausência de incidência do CDC, art. 51, I | 2026-08-21 |
| Eleição de foro da cláusula 11 | Válida em contrato paritário | Ausência de incidência do CDC, arts. 51, IV, e 101, I | 2026-08-21 |
| Cessão patrimonial da cláusula 4 | Válida, ampla e definitiva. Falta apenas ressalvar os dois direitos morais que subsistem no software | Lei nº 9.609/1998, art. 2º, § 1º - `fontes/leis/06-lei-software-9609-1998.html` | 2026-08-21 |
| Direitos morais em software | Afastados, salvo paternidade e oposição a alteração deformante. A regra geral do art. 27 da Lei nº 9.610/1998 cede à norma especial | Lei nº 9.609/1998, art. 2º, § 1º | 2026-08-21 |
| Subcontratação de suboperador sem aviso | Incompatível com o dever de verificação do controlador | LGPD, art. 39 | 2026-08-21 |
| Prazo de 90 dias para comunicar incidente | Incompatível com o dever do controlador de comunicar à ANPD | LGPD, art. 48; Resolução CD/ANPD nº 15/2024 | 2026-08-21 |
| Rescisão imediata sem aviso | A resilição opera mediante denúncia notificada, e exige prazo compatível quando houve investimento considerável | Código Civil, art. 473 e parágrafo único | 2026-08-21 |
| Perda do código somada à retenção das parcelas | Enriquecimento sem causa | Código Civil, art. 884 | 2026-08-21 |
| Aprovação tácita por silêncio | Admissível quando os usos autorizarem; falta critério objetivo de homologação | Código Civil, art. 111 | 2026-08-21 |
| Reajuste anual pelo IPCA | Válido, índice identificado e periodicidade admitida | Ausência de incidência do CDC, art. 51, X | 2026-08-21 |
| Não aliciamento recíproco por 24 meses | Válido entre empresas. Proporcionalidade da multa é pauta de negociação | Código Civil, art. 422 | 2026-08-21 |

Biblioteca local conferida contra a fonte oficial em 2026-08-21: 29 de 29 fontes EM DIA, conforme `STATUS-FONTES.md`.

---

## Questões

### Questão 1 - Incidência do CDC por equiparação

**Pergunta**

A Norvia Logística S.A. pode ser considerada consumidora por equiparação neste contrato, atraindo a aplicação do Código de Defesa do Consumidor, apesar de adquirir o software como insumo de sua atividade-fim de logística?

**Por que o agente não concluiu**

- [x] Mais de uma interpretação plausível
- [x] Exige juízo sobre validade no caso concreto
- [x] Tema jurisprudencial fora da biblioteca local

A análise adotou, e declarou, a premissa de que não há relação de consumo, pela leitura literal dos arts. 2º e 3º do CDC: a contratante não é destinatária final, porque o sistema de roteirização integra sua cadeia produtiva. A teoria finalista mitigada, contudo, admite a aplicação do CDC a pessoa jurídica quando demonstrada vulnerabilidade técnica, jurídica ou econômica frente ao fornecedor. Essa aferição é casuística e se apoia em jurisprudência, que a biblioteca local não cobre.

**Interpretações possíveis**

| # | Interpretação | Fundamento | Risco se adotada |
|---|---|---|---|
| A | Não há relação de consumo. A contratante é sociedade anônima de logística adquirindo insumo de sua atividade-fim, e não há vulnerabilidade presumível. Premissa adotada na revisão | CDC, arts. 2º e 3º, leitura finalista | Se a premissa cair em litígio, três cláusulas hoje tratadas como válidas passam a ser atacáveis de uma vez, e a revisão terá validado o que era nulo |
| B | Há relação de consumo por equiparação, dada a vulnerabilidade técnica da contratante em matéria de software | Teoria finalista mitigada | A limitação de responsabilidade da cláusula 9 e o foro da cláusula 11 tornam-se nulos, e o contrato precisa ser reescrito em favor da contratante |
| C | A questão só se resolve no caso concreto, conforme a prova de vulnerabilidade produzida | Casuística | Mantém a insegurança, mas é a leitura mais honesta se não houver elemento para decidir agora |

**Impacto prático da resposta**

Define a validade de três cláusulas: a limitação de responsabilidade (9), a eleição de foro (11) e o reajuste (3). Define também qual das partes tem interesse em negociar cada uma. Se a resposta for B, a revisão precisa ser refeita nessas cláusulas, e a contratante tem posição negocial muito mais forte do que a que o contrato hoje reflete.

**Urgência:** Alta - a resposta muda o texto a ser assinado.

**Trecho relacionado**

> A responsabilidade total da CONTRATADA por perdas e danos decorrentes deste contrato fica limitada ao valor efetivamente pago nos 12 meses anteriores ao evento, excluídos lucros cessantes e danos indiretos.

---

### Questão 2 - Alcance do art. 8º da Lei de Software

**Pergunta**

O art. 8º da Lei nº 9.609/1998, que obriga quem comercializa programa de computador a assegurar aos usuários a prestação de serviços técnicos complementares durante o prazo de validade técnica da versão, alcança contrato de desenvolvimento sob encomenda como este? Em caso afirmativo, qual é o prazo de validade técnica de um sistema feito para um único cliente, e a obrigação pode ser afastada por cláusula?

**Por que o agente não concluiu**

- [x] Mais de uma interpretação plausível
- [x] Norma cujo escopo não se resolve pelo próprio texto

O artigo se dirige a quem "comercializa" programa de computador, expressão que remete a software distribuído no mercado. Desenvolvimento sob encomenda para um cliente específico não se encaixa com evidência nessa hipótese, e o texto legal não define o alcance. A biblioteca local traz a lei, não orientação sobre sua aplicação.

**Interpretações possíveis**

| # | Interpretação | Fundamento | Risco se adotada |
|---|---|---|---|
| A | Não alcança. O artigo trata de software comercializado no mercado, e sob encomenda a relação é regida pelo contrato e pelo Código Civil | Leitura literal de "comercializa" | Se estiver errada, a contratada descumpre obrigação legal ao encerrar o suporte com a garantia contratual |
| B | Alcança. Houve comercialização de programa de computador, ainda que para um único adquirente, e a obrigação de suporte técnico é legal e independe de cláusula | Leitura ampla de comercialização | A contratada assume obrigação de prazo indeterminado, não precificada nas 6 parcelas, o que altera a economia do contrato |
| C | Alcança, mas o prazo de validade técnica pode ser definido contratualmente, desde que razoável e informado | Composição entre a norma e a liberdade contratual | Exige incluir cláusula definindo o prazo, o que hoje não existe |

**Impacto prático da resposta**

Define se a garantia de 12 meses proposta na cláusula 8 basta, ou se é preciso contratar manutenção com prazo e preço. Define também quem suporta o custo do suporte no período seguinte, que hoje o contrato simplesmente não trata - é uma das cláusulas ausentes apontadas na revisão.

**Urgência:** Média - afeta a fase posterior à entrega, não a assinatura.

**Trecho relacionado**

> 8.1. A CONTRATADA corrige, sem custo, os defeitos de conformidade do sistema pelo prazo de 12 (doze) meses contados da homologação da última entrega.

---

## Anexos

- `testes/contrato-desenvolvimento-exemplo-REVISADO-2026-08-21.md` - revisão completa, com análise cláusula a cláusula e texto consolidado.
- `testes/contrato-desenvolvimento-exemplo.md` - contrato original.

## Resposta do advogado

Espaço reservado. A ser preenchido pelo profissional.

### Questão 1 - Incidência do CDC por equiparação

- **Parecer:**
- **Fundamento:**
- **Ressalvas:**
- **Advogado:** [NOME] - OAB [UF] [NÚMERO]
- **Data:**

### Questão 2 - Alcance do art. 8º da Lei de Software

- **Parecer:**
- **Fundamento:**
- **Ressalvas:**
- **Advogado:** [NOME] - OAB [UF] [NÚMERO]
- **Data:**

---

## Como esta consulta foi montada

O levantamento da seção "O que já foi apurado" foi feito por agente automatizado, a partir das fontes oficiais indicadas, com data de verificação em cada linha. A biblioteca de fontes foi conferida contra os portais oficiais em 21/08/2026, com 29 de 29 normas em dia.

As duas questões acima são justamente o que o agente **não** conseguiu concluir. O restante do contrato foi resolvido e não precisa ser revisto.

Nada aqui é parecer. O parecer é o que se pede.
