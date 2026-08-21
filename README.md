# legal-br

Skill para [Claude Code](https://claude.com/claude-code) que atua como agente de IA jurídico em direito digital, proteção de dados e direito do consumidor, apoiando o desenvolvimento de software no Brasil.

> Ferramenta de apoio ao processo jurídico. Não emite parecer e não substitui advogado inscrito na OAB. O que sai do padrão é encaminhado para parecer humano.

## O problema

Modelo de linguagem responde pergunta jurídica de memória. Cita artigo que não existe e atribui obrigação à lei errada, com número plausível o bastante para passar despercebido. Em direito isso invalida a resposta inteira.

Aqui o conhecimento interno do modelo não conta como fonte. Toda afirmação jurídica precisa de norma, artigo, onde foi verificado e data. O que não passa nesse teste vira pergunta para um advogado, não conclusão.

## Como funciona

### 1. Biblioteca local de fontes primárias

29 documentos oficiais baixados direto do Planalto, da ANPD e do Diário Oficial:

| Pasta | Conteúdo |
|---|---|
| `fontes/leis/` | Constituição, Código Civil, CDC, LGPD, Marco Civil da Internet, Lei de Software, Direitos Autorais, ECA, Lei Geral do Esporte, comércio eletrônico, assinaturas eletrônicas, ICP-Brasil |
| `fontes/eca-digital/` | Lei 15.211/2025 (ECA Digital), Decreto 12.880/2026, orientações da ANPD sobre aferição de idade |
| `fontes/anpd/` | Guias da ANPD (legítimo interesse, cookies, agentes de tratamento e encarregado, segurança e ROPA para pequeno porte) e Resoluções CD/ANPD nº 2/2022, 15/2024, 18/2024, 19/2024 |

A consulta é feita no arquivo oficial, antes de qualquer afirmação. Não há camada de resumo no meio.

A biblioteca não vem no repositório. Você a reconstrói com um comando, e o atualizador valida cada download: PDF tem que começar com `%PDF-` e HTML não pode ser página de erro do portal. Essa checagem existe porque portais de governo devolvem página de manutenção com HTTP 200, e um script que confia no código de status salva o erro achando que deu certo.

### 2. Regra de evidência

Cada ponto da análise recebe uma classificação:

| Classificação | Significado |
|---|---|
| FATO LEGAL | Obrigação confirmada em fonte oficial, com norma, artigo, arquivo e data |
| INTERPRETAÇÃO | Aplicação da regra ao caso concreto |
| RECOMENDAÇÃO | Medida preventiva ou boa prática |
| RISCO | Consequência jurídica ou operacional possível |
| PENDÊNCIA DE VALIDAÇÃO | Não foi possível confirmar, e o ponto vai para advogado externo |

Se a norma não foi localizada na biblioteca nem em fonte oficial, o ponto não pode ser classificado como FATO LEGAL. Na dúvida entre afirmar e escalonar, escalona.

### 3. Revisão de documentos

Entra um contrato, uma política, um termo ou um regulamento. Sai um `.md`:

```text
<original>-REVISADO-AAAA-MM-DD.md
```

A revisão vai cláusula a cláusula, com o texto original preservado, o apontamento, o fundamento com a fonte aberta e a redação substitutiva proposta. Cláusula sem problema também é registrada, porque quem lê precisa saber que ela foi analisada. Cláusulas ausentes entram em seção própria.

### 4. Quando o documento é sinalizado

Boa parte dos documentos jurídicos de um sistema é padrão: repete-se entre projetos e já foi validada antes. Esses passam limpos. O que precisa de parecer é o que sai do padrão.

Documento validado integralmente em fonte oficial não recebe aviso nenhum. Só o documento com ponto pendente sai sinalizado, e a sinalização nomeia o ponto, delimita o que já está verificado e aponta para a consulta gerada.

Ressalva em todo documento vira ruído. O leitor para de ler o rodapé e perde junto a sinalização que importava.

### 5. Escalonamento

O agente resolve o grosso do trabalho. O advogado recebe o resíduo, num arquivo pronto para responder:

```text
CONSULTA-ADVOGADO-<assunto>-AAAA-MM-DD.md
```

Cada questão traz pergunta objetiva, contexto mínimo, o que já foi apurado e com base em qual fonte, as interpretações possíveis com o risco de cada uma, o impacto prático da resposta e a urgência. O formato existe para que o advogado responda sem refazer a análise.

## Escopo

LGPD e privacidade, políticas de privacidade, cookies, termos de uso, contratos de desenvolvimento e licenciamento de software, SaaS, CDC e comércio eletrônico, pagamentos, cancelamentos e reembolsos, responsabilidade civil, propriedade intelectual e Lei de Software, marcas e INPI, uso de imagem, crianças e adolescentes, eventos esportivos e regulamentos, documentação de conformidade.

## Instalação

Windows, com Claude Code instalado:

```bash
git clone https://github.com/manfredjr/legal-br.git
```

Depois execute `legal-br-skill\INSTALAR-LEGAL-BR.bat`. Ele copia a skill para `%USERPROFILE%\.claude\skills\legal-br`.

Baixe a biblioteca de fontes:

```text
%USERPROFILE%\.claude\skills\legal-br\ATUALIZAR-FONTES.bat
```

Reinicie o Claude Code e teste:

```text
/legal-br
```

Para instalar só num projeto, copie a pasta `legal-br` para `SEU_PROJETO\.claude\skills\`.

### Configuração

Copie `dados-empresa.exemplo.md` para `dados-empresa.md` e preencha. A skill lê esse arquivo antes de redigir contratos e políticas. O que não estiver lá vira `[PREENCHER]` no documento, nunca é inventado. O `dados-empresa.md` fica fora do controle de versão.

## Estrutura

```text
legal-br-skill/legal-br/
  SKILL.md                    modo de operacao
  references/                 8 roteiros tematicos
  templates/                  4 modelos de saida
  dados-empresa.exemplo.md
  FONTES-OFICIAIS.md          catalogo com o link oficial de cada arquivo
  ATUALIZAR-FONTES.bat/.ps1   baixa e valida as 29 fontes
  fontes/                     biblioteca local (gerada)
```

## Limites

Não substitui advogado, não emite parecer e não avalia caso concreto em litígio. Direito trabalhista, tributário, societário e contratação pública ficam fora do escopo e são escalonados por definição.

A biblioteca local é um snapshot com data registrada. Quando a vigência de uma norma for material para a resposta, o agente valida na fonte oficial online, e a versão vigente prevalece sobre a cópia local.

## Licença

[MIT](LICENSE).

Os textos legais baixados pelo `ATUALIZAR-FONTES.bat` são atos oficiais e não são objeto de proteção autoral (Lei 9.610/1998, art. 8º, IV). Eles não são redistribuídos neste repositório, porque o script os obtém direto da fonte oficial.
