# Gabarito - Contrato de Desenvolvimento Norvia x Bitola

Abra só depois de rodar a análise, senão o teste não vale.

## O que este teste mede

Contrato **entre empresas**, fora de relação de consumo. Mede duas coisas ao
mesmo tempo:

1. Se o agente acha os problemas reais (6 plantados).
2. Se o agente resiste a aplicar o CDC onde ele não incide (5 armadilhas).

A armadilha central: quase toda cláusula deste contrato seria abusiva se
houvesse consumidor. Não há. O agente que sair citando art. 51 do CDC reprova,
mesmo achando todos os problemas reais.

## Premissa que a análise precisa declarar

Não há relação de consumo. Duas empresárias contratando no exercício de suas
atividades, com o software destinado à atividade-fim da contratante. Não há
destinatário final nos termos do art. 2º do CDC. Regime aplicável: Código
Civil, Lei nº 9.609/1998 e Lei nº 9.610/1998.

Análise que não declarar essa premissa está incompleta, ainda que acerte o resto.

## Problemas reais

| # | Cláusula | Problema | Onde conferir |
|---|---|---|---|
| 1 | 7 | Suboperador subcontratado sem aviso nem anuência do controlador | LGPD, art. 39, e Guia da ANPD sobre agentes de tratamento |
| 2 | 7 | Prazo de 90 dias para comunicar incidente ao controlador, incompatível com o dever do controlador de comunicar à ANPD | LGPD, art. 48; Resolução CD/ANPD nº 15/2024 |
| 3 | 10 | Rescisão imediata, sem ônus nem aviso prévio, por qualquer parte a qualquer tempo | Código Civil, arts. 422 e 473, parágrafo único |
| 4 | 10 | Perda do código já produzido somada à não restituição das parcelas pagas | Enriquecimento sem causa - Código Civil, art. 884 |
| 5 | 2 | Aprovação tácita por silêncio em 5 dias úteis, sem critério objetivo de homologação | Código Civil, art. 111; risco de aceitação de entrega defeituosa |
| 6 | 4 | Cessão de titularidade sem ressalva dos dois direitos morais que sobrevivem no software | Lei nº 9.609/1998, art. 2º, § 1º |

**Cuidado com o item 6, que é uma armadilha dentro do achado.** A resposta
preguiçosa é citar o art. 27 da Lei nº 9.610/1998 ("os direitos morais do autor
são inalienáveis e irrenunciáveis") e declarar a cessão inválida. Está errado
por excesso.

A Lei nº 9.609/1998, art. 2º, § 1º, afasta expressamente os direitos morais no
caso de programa de computador, **ressalvados apenas dois**: reivindicar a
paternidade do programa, e opor-se a alteração não autorizada que implique
deformação ou mutilação capaz de prejudicar a honra ou a reputação do autor.

Ou seja: a cessão patrimonial da cláusula 4 é válida, ampla e definitiva. O que
falta é ressalvar esses dois direitos remanescentes. Análise que declarar a
cláusula inválida, ou que invocar o art. 27 da Lei nº 9.610 sem a lente do art.
2º, § 1º, da Lei nº 9.609, erra por não ler a norma especial.

Achado adicional valorizado, não obrigatório: o CNPJ da CONTRATADA tem 15
dígitos (33.204.881/0001-236). Erro material que impede a correta qualificação
da parte. Uma análise atenta pega.

## Cláusulas ausentes que deveriam aparecer

- Escopo de manutenção e suporte após a garantia.
- Níveis de serviço, se houver operação assistida.
- Consequências do atraso: multa, retenção ou reequilíbrio.
- Critério objetivo de homologação, ligado à cláusula 2.
- Garantia de não violação de direitos de terceiros pelo código entregue.
- Tratamento de dados: prazo de devolução ou eliminação ao fim do contrato.
- Escrow ou entrega de código-fonte e ambiente, para continuidade.

## As cinco armadilhas de falso positivo

Apontar qualquer uma como abusiva reprova a análise.

| # | Cláusula | O que parece | Por que é legítimo |
|---|---|---|---|
| 1 | 9 | Limitação de responsabilidade com exclusão de lucros cessantes | Válida entre empresas. Não há CDC. E a cláusula já ressalva dolo, culpa grave e confidencialidade, que é a boa prática |
| 2 | 11 | Eleição de foro com renúncia a qualquer outro | Contrato paritário entre empresas. Válida |
| 3 | 4 | Cessão total, definitiva, sem limite de prazo ou território | Direito patrimonial de autor sobre software **é** cedível nesses termos. O problema é outro: falta ressalvar o direito moral, que é o item 6 acima. Não confunda |
| 4 | 3 | Reajuste anual pelo IPCA | Cláusula comum e válida, com índice identificado |
| 5 | 5 | Não aliciamento por 24 meses com multa de 12 remunerações | Válida entre empresas, recíproca e com prazo determinado. Cabe RECOMENDAÇÃO sobre a proporcionalidade da multa, não achado de nulidade |

## Sinais de que algo está errado

- Citou o CDC como fundamento de nulidade em qualquer cláusula.
- Chamou a limitação de responsabilidade da cláusula 9 de nula.
- Chamou o foro da cláusula 11 de abusivo.
- Disse que a cessão da cláusula 4 é inválida por ser definitiva e sem prazo,
  em vez de apontar a falta de ressalva ao direito moral.
- Não declarou a premissa de que não há relação de consumo.
- Não achou o problema do suboperador nem o prazo de 90 dias da cláusula 7.
