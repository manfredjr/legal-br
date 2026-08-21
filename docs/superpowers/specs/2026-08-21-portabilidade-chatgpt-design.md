# Portabilidade do legal-br para o ChatGPT

Data: 2026-08-21
Status: proposto, aguardando aprovação

## Problema

O legal-br hoje roda só no Claude Code. Ele é uma skill com sistema de arquivos: lê `fontes-md/leis/03-lgpd...md` do disco, chama `VERIFICAR-FONTES.bat`, aponta para `references/` por caminho relativo.

O objetivo é rodar também no ChatGPT, sem manter duas versões que divergem com o tempo.

## Restrições do lado do ChatGPT

Levantadas em 21/08/2026, com fonte.

| Restrição | Valor | Consequência |
|---|---|---|
| Instructions do Custom GPT | 8.000 caracteres | `SKILL.md` tem 19.372. Excede em 11.372. |
| Arquivos de conhecimento | 10 a 20, conforme a fonte | `fontes-md/` tem 29 arquivos. Precisa consolidar. |
| Sistema de arquivos | não existe | Nada de `.bat`, nada de caminho de disco. |
| Leitura dos anexos | busca semântica sobre trechos indexados | Não é leitura do arquivo inteiro. |

O limite de 8.000 caracteres está confirmado em discussão da comunidade OpenAI. O teto de arquivos aparece como 10 em material de 2024 e pode ter subido; o desenho abaixo fica confortável em qualquer um dos dois.

## A perda que não dá para eliminar

No Claude Code o agente abre o arquivo e lê o artigo inteiro. No ChatGPT a consulta é busca semântica sobre pedaços indexados, que pode trazer o trecho errado sem avisar.

Isso mexe no princípio central do projeto. As duas versões não ficam idênticas, e fingir que ficam seria pior do que documentar a diferença.

Duas compensações, ambas dentro do orçamento de 8.000 caracteres:

1. O adaptador do ChatGPT ganha uma regra que o do Claude Code não tem: citou trecho vindo do conhecimento anexado, confirme na URL oficial antes de afirmar.
2. O catálogo com a URL oficial de cada norma entra como arquivo de conhecimento, para o agente sempre ter para onde ir.

O ChatGPT navega, e para um agente cuja regra é confirmar na fonte oficial isso compensa parte da perda: buscar o texto vigente no Planalto na hora é melhor que ler um snapshot de agosto.

## Decisão de arquitetura

Considerei separar o projeto em `core/` mais `adapters/`, com os dois artefatos gerados a partir de um núcleo neutro. Descartei: é reestruturação grande de uma coisa que funciona, e o ganho é teórico.

O desenho escolhido segue o padrão que o projeto já usa em `fontes/` e `fontes-md/`: **um artefato é a fonte, o outro é derivado com verificação**.

- `legal-br-skill/legal-br/` continua sendo a fonte da verdade. É a skill do Claude Code, e é onde se edita.
- `dist/chatgpt/` é gerado a partir dela por `GERAR-CHATGPT.ps1`.
- Correção jurídica entra num lugar só e sai nas duas pontas.

## O que o gerador produz

```text
dist/chatgpt/
  instructions.txt              cola no campo Instructions do Custom GPT
  knowledge/
    01-roteiros.md              as 8 references reunidas
    02-templates.md             os 4 templates reunidos
    03-catalogo-fontes.md       URL oficial de cada norma
    10-leis-produto-digital.md  LGPD, CDC, Decreto 7.962, Marco Civil,
                                Lei de Software, Direitos Autorais
    11-leis-gerais.md           Constituição, Código Civil
    12-menores.md               ECA, ECA Digital, Decreto 12.880, aferição de idade
    13-esporte.md               Lei Geral do Esporte
    14-assinaturas.md           Lei 14.063, ICP-Brasil
    20-anpd-guias.md            os 7 guias da ANPD
    21-anpd-resolucoes.md       Resoluções 2/2022, 15/2024, 18/2024, 19/2024
  COMO-INSTALAR.md              passo a passo no builder da OpenAI
```

Dez arquivos de conhecimento, dentro do teto mesmo no cenário de 10.

O agrupamento é por assunto, não por tamanho. A Constituição e o Código Civil vão para `11-leis-gerais.md` porque são consultados menos num agente de produto digital, e separá-los evita que dominem a indexação dos arquivos que importam no dia a dia.

## Como o instructions.txt cabe em 8.000

Não é poda arbitrária. São três movimentos:

**1. A seção "Biblioteca jurídica local" é substituída, não cortada.** São 3.003 caracteres falando de `fontes/`, `.bat` e `STATUS-FONTES.md`, tudo específico do Claude Code. No ChatGPT vira um bloco curto explicando que a biblioteca está nos arquivos anexados e que trecho recuperado precisa ser confirmado na URL oficial.

**2. Seções que só existem no Claude Code saem inteiras.** "Antes de citar a biblioteca local" depende do `STATUS-FONTES.md`, que é um relatório gerado por script. Sem sistema de arquivos, não se aplica.

**3. As listas longas viram ponteiro para o conhecimento.** O `SKILL.md` duplica trechos das `references/`, e isso já estava registrado como pendência. No instructions o bloco vira uma linha apontando para `01-roteiros.md`.

O núcleo que precisa sobreviver inteiro: identidade e modo de operação, regra de evidência, o agente como filtro, fluxo de análise, revisão de documentos, escalonamento e limites. Somados hoje dão cerca de 7.500 caracteres, e cabem.

**Se não couber, o gerador falha.** Não trunca, não resume sozinho. Reporta quantos caracteres passaram e qual seção cortar. Instrução truncada no meio é pior que instrução ausente.

## O que o gerador verifica antes de gravar

Mesma disciplina do conversor de fontes. Reprovou, não grava e diz o porquê.

- `instructions.txt` com no máximo 8.000 caracteres.
- Toda seção obrigatória presente. A lista de obrigatórias fica explícita no script.
- Nenhuma referência órfã: caminho citado no instructions tem que existir em `knowledge/`.
- Nenhuma menção a `.bat`, `.ps1` ou caminho do Windows sobrou no instructions.
- Todo arquivo do catálogo presente em algum bundle, e nenhum bundle vazio.
- Contagem de artigos de cada bundle igual à soma dos arquivos que o compõem, para a concatenação não perder conteúdo.

## Como fica a divergência entre as duas versões

Um arquivo `DIFERENCAS-ENTRE-PLATAFORMAS.md` no `dist/chatgpt/`, gerado junto, listando o que muda. Hoje seriam três itens: a leitura da biblioteca, a verificação de atualidade e a regra extra de confirmação.

Isso existe para que a diferença seja fato registrado, e não descoberta desagradável de quem usa as duas.

## Fora de escopo

- Assistants API e Responses API. O pedido é usar no ChatGPT, não construir aplicação.
- Gemini e outros. O `instructions.txt` funciona colado em qualquer chat, mas não vou testar nem prometer.
- Publicar o GPT na loja. Decisão de negócio, não de engenharia.
- Sincronizar automaticamente o Custom GPT quando o repositório mudar. Não há API pública para isso; a instalação é manual e o `COMO-INSTALAR.md` cobre.

## Riscos

**O maior: a busca semântica traz o trecho errado.** Não dá para eliminar, só sinalizar. Mitigação: a regra de confirmação na URL oficial e o catálogo de fontes no conhecimento.

**O limite de 8.000 pode apertar quando o `SKILL.md` crescer.** É por isso que o gerador falha em vez de truncar: o aperto vira erro visível na hora de gerar, e não degradação silenciosa do agente.

**Os limites da OpenAI mudam sem aviso.** O `COMO-INSTALAR.md` registra a data em que foram verificados.

## Plano de implementação

1. `lib-chatgpt.ps1` com montagem dos bundles e as verificações.
2. `GERAR-CHATGPT.ps1` e o `.bat`.
3. `adaptacao-chatgpt.md`: as seções que substituem as do Claude Code.
4. Marcar no `SKILL.md` quais seções são específicas de plataforma.
5. Rodar, conferir o tamanho e a integridade dos bundles.
6. Instalar num Custom GPT de teste e fazer uma revisão de documento de ponta a ponta.
7. Documentar em README, CLAUDE.md e CONTEUDO.txt.

O passo 6 é o que prova o desenho. Sem ele, é só arquivo bem formatado.
