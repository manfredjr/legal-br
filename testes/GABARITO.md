# Gabarito do documento de teste

Abra só depois de rodar a análise, senão o teste não vale.

São 14 problemas plantados em `termos-de-uso-exemplo.md`. Uma análise boa acha
a maioria dos de risco alto, propõe redação substitutiva e separa o que é fato
legal do que é interpretação.

## Risco alto

| # | Cláusula | Problema | Onde conferir |
|---|---|---|---|
| 1 | 6 | Exclusão total de responsabilidade, inclusive por lesão física decorrente de falha de manutenção | CDC, art. 51, I |
| 2 | 6 | Renúncia prévia a indenização | CDC, art. 51, I |
| 3 | 4 | Cessão de imagem universal, definitiva, irrevogável e irrestrita, sem prazo nem território | Código Civil, art. 20 |
| 4 | 4 | Confunde inscrição no torneio com autorização de uso de imagem de menor | ECA, e ver `references/menores-imagem.md` |
| 5 | 2 | Menor se cadastra sozinho, sem fluxo de responsável | ECA Digital, Lei 15.211/2025 |
| 6 | 5 | Nenhuma devolução mesmo com cancelamento pela organização | CDC, art. 51, IV |
| 7 | 7 | Alteração unilateral com efeito retroativo | CDC, art. 51, XIII |

## Risco médio

| # | Cláusula | Problema | Onde conferir |
|---|---|---|---|
| 8 | 1 | Caixa de aceite pré-marcada | `references/consumidor-commerce.md` |
| 9 | 3 | Consentimento de marketing já assinalado | LGPD, art. 8º |
| 10 | 5 | Taxa de serviço só aparece na confirmação | Decreto 7.962/2013, art. 2º |
| 11 | 3 | Finalidade indeterminada e compartilhamento genérico com parceiros | LGPD, arts. 6º e 9º |
| 12 | 3 | Retenção por tempo indeterminado | LGPD, art. 15 |
| 13 | 8 | Afasta responsabilidade por incidente de segurança | LGPD, art. 44, e `references/lgpd-privacidade.md` |
| 14 | 9 | Foro de eleição que pode dificultar a defesa do consumidor | CDC, art. 51, IV |

## Cláusulas ausentes que deveriam aparecer

- Identificação do fornecedor: razão social, CNPJ e endereço.
- Canal de atendimento e de exercício de direitos do titular.
- Encarregado pelo tratamento de dados.
- Direito de arrependimento em sete dias, quando aplicável.
- Versão e data dos Termos, com registro do aceite.
- Base legal por finalidade de tratamento.
- Hipóteses de cancelamento e remarcação pela organização.
- Regras de segurança da atividade física.

## Coleta excessiva na cláusula 2

Endereço residencial completo e foto de rosto para reservar quadra dificilmente
passam no teste de necessidade da LGPD, art. 6º, III. Uma análise atenta
questiona a finalidade de cada campo, não só a lista inteira.

## O que separa uma análise boa de uma ruim

Achar os problemas é o mínimo. Vale observar se a saída:

- cita norma e artigo, com o arquivo onde conferiu e a data;
- separa FATO LEGAL de INTERPRETAÇÃO, em vez de afirmar tudo com o mesmo peso;
- propõe redação substitutiva, e não só aponta;
- registra cláusula sem problema como analisada;
- lista o que falta, e não só o que está errado;
- marca `[PREENCHER]` onde falta dado da empresa, sem inventar CNPJ ou foro;
- manda para advogado só o que não conseguiu validar, e não o documento inteiro.

## Sinais de que algo está errado

- Citou artigo que não existe, ou número trocado. Confira no `fontes-md/`.
- Afirmou sem dizer onde verificou.
- Carimbou o documento inteiro como "consulte um advogado" sem nomear o ponto.
- Não achou nenhum dos sete de risco alto.
