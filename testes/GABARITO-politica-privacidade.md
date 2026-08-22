# Gabarito - Política de Privacidade Cadência Studio

Abra só depois de rodar a análise, senão o teste não vale.

## O que este teste mede

Este é o **caso invertido** do `termos-de-uso-exemplo.md`. Lá havia 14 problemas
plantados e a pergunta era quantos o agente acha. Aqui **não há problema
plantado**, e a pergunta é outra: o agente consegue não inventar nenhum?

É o teste do falso positivo, e é o que valida o desenho central do projeto - "o
agente é um filtro". Se documento correto não sai limpo, a sinalização vira
ruído e a skill perde a razão de existir.

## Resultado esperado

- Zero PENDÊNCIA DE VALIDAÇÃO.
- Zero risco alto.
- Documento sai **limpo**: sem bloco de sinalização, sem "consulte um
  advogado", sem ressalva de autoria por IA, sem rodapé de cautela.
- Situação declarada: pronto para uso, ou pronto após ajustes cosméticos.

Observação recomendável, mas não obrigatória: apontar como RECOMENDAÇÃO de
risco baixo um ou dois refinamentos possíveis. Recomendação não é pendência e
não sinaliza o documento.

## As sete armadilhas de falso positivo

Cada item abaixo **parece** violação numa leitura apressada e **é legítimo**. O
agente erra se apontar qualquer um como problema.

| # | Seção | O que parece | Por que está correto |
|---|---|---|---|
| 1 | 2 | Tratamento sem consentimento na maioria das finalidades | Consentimento é uma das dez hipóteses do art. 7º, não a regra. Execução de contrato (V) e obrigação legal (II) dispensam consentimento |
| 2 | 2 | Uso de legítimo interesse, hipótese "perigosa" | Art. 7º, IX, é hipótese legal válida. A política traz finalidade legítima, minimização, teste de expectativa e direito de oposição - exatamente o que o Guia da ANPD pede |
| 3 | 4 | Transferência internacional para os Estados Unidos | Lícita. Art. 33 admite, e a política indica cláusulas contratuais padrão nos termos da Resolução CD/ANPD nº 19/2024, com escopo mínimo (nome e e-mail) |
| 4 | 5 | Retenção de 5 anos, prazo longo | Art. 16, I, autoriza conservação para cumprimento de obrigação legal ou regulatória. O prazo fiscal justifica |
| 5 | 5 | Guarda de registros de acesso por 6 meses | Não é excesso, é obrigação: art. 15 do Marco Civil da Internet |
| 6 | 8 | Cookies sem pedir consentimento | Cookies estritamente necessários dispensam consentimento. O Guia Orientativo da ANPD sobre cookies trata disso |
| 7 | 3 | Dados de menores sem consentimento parental colhido pela empresa | Aqui a empresa é **operadora**, não controladora. Quem controla é o professor. O papel está declarado corretamente |

## O que uma análise boa faz aqui

- Declara a premissa de incidência: há relação de consumo (assinatura paga a
  pessoa física destinatária final), e por isso o CDC se aplica além da LGPD.
- Registra cada seção como analisada, incluindo as sem apontamento.
- Confirma que cada uma das dez hipóteses de direito do titular do art. 18 está
  contemplada na seção 6.
- Confirma a existência dos elementos do art. 9º: finalidade, forma e duração,
  controlador, contato, compartilhamento, responsabilidades e direitos.
- Entrega o documento **sem** seção de pendências preenchida e **sem** bloco de
  sinalização.

## Pontos que admitem RECOMENDAÇÃO, não achado

Legítimos como sugestão de melhoria, desde que classificados como RECOMENDAÇÃO
ou risco baixo e não como violação:

- A seção 3 pede que o professor declare ter autorização do responsável, mas
  não descreve como essa declaração é registrada. Sugerir registro é razoável.
- A política não menciona decisão automatizada. Como não parece haver,
  registrar a ausência é opcional.
- O prazo de 30 dias para reativação após cancelamento poderia estar também nos
  termos de uso, para coerência entre documentos.

## Sinais de que algo está errado

- Apontou qualquer das sete armadilhas como violação.
- Gerou `CONSULTA-ADVOGADO-*.md` para este documento.
- Anexou bloco de sinalização, ressalva genérica ou aviso de autoria por IA.
- Classificou como risco alto ou médio algo que a lei autoriza expressamente.
- Exigiu consentimento onde a base legal é execução de contrato ou obrigação
  legal - o erro mais comum nesta área.
- Disse que a transferência internacional é irregular sem ler o art. 33 e a
  Resolução nº 19/2024.
- Declarou "precisa de revisão por advogado" sem nomear um ponto concreto.
