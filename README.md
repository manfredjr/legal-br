# legal-br

Skill para [Claude Code](https://claude.com/claude-code) que atua como **agente de IA jurídico** em direito digital, proteção de dados e direito do consumidor, apoiando o desenvolvimento de software no Brasil.

> ⚠️ Ferramenta de apoio. Produz documentos assinados como material de **agente jurídico de inteligência artificial** e **não substitui parecer de advogado inscrito na OAB**.

## O problema

Modelo de linguagem responde pergunta jurídica de memória. Cita artigo que não existe, atribui obrigação a lei errada, dá número de artigo plausível e falso. Em direito, isso não é um erro cosmético — é a resposta inteira sem valor.

Esta skill parte do princípio oposto: **conhecimento interno do modelo não é fonte**. Toda afirmação jurídica precisa de norma, artigo, onde foi verificado e data. O que não passa nesse teste não vira conclusão: vira pergunta para um advogado.

## Como funciona

### 1. Biblioteca local de fontes primárias

29 documentos oficiais baixados direto do Planalto, da ANPD e do Diário Oficial:

| Pasta | Conteúdo |
|---|---|
| `fontes/leis/` | Constituição, Código Civil, CDC, LGPD, Marco Civil da Internet, Lei de Software, Direitos Autorais, ECA, Lei Geral do Esporte, comércio eletrônico, assinaturas eletrônicas, ICP-Brasil |
| `fontes/eca-digital/` | Lei 15.211/2025 (ECA Digital), Decreto 12.880/2026, orientações da ANPD sobre aferição de idade |
| `fontes/anpd/` | Guias da ANPD (legítimo interesse, cookies, agentes de tratamento e encarregado, segurança e ROPA para pequeno porte) e Resoluções CD/ANPD nº 2/2022, 15/2024, 18/2024, 19/2024 |

O agente lê o texto legal antes de afirmar. Não é RAG sobre resumo — é o arquivo oficial.

A biblioteca não vem no repositório: você a reconstrói com um comando. O atualizador **valida cada download** — PDF tem que começar com `%PDF-`, HTML não pode ser página de erro do portal — porque portais de governo devolvem página de manutenção com HTTP 200, e um script ingênuo salva o erro achando que deu certo.

### 2. Regra de evidência

Cada ponto da análise recebe uma classificação:

| Classificação | Significado |
|---|---|
| **FATO LEGAL** | Obrigação confirmada em fonte oficial — com norma, artigo, arquivo e data |
| **INTERPRETAÇÃO** | Aplicação da regra ao caso concreto |
| **RECOMENDAÇÃO** | Medida preventiva ou boa prática |
| **RISCO** | Consequência jurídica ou operacional possível |
| **PENDÊNCIA DE VALIDAÇÃO** | Não foi possível confirmar — vai para advogado externo |

Se a norma não foi localizada na biblioteca nem em fonte oficial, o ponto **não pode** ser FATO LEGAL. Na dúvida entre afirmar e escalonar, escalona.

### 3. Revisão de documentos

Entra um contrato, uma política, um termo ou um regulamento. Sai um `.md`:

```text
<original>-REVISADO-AAAA-MM-DD.md
```

Cláusula a cláusula, com o texto original preservado, o apontamento, o fundamento com a fonte aberta e a **redação substitutiva proposta**. Cláusula sem problema também é registrada — quem lê precisa saber que ela foi analisada. Cláusulas ausentes entram numa seção própria.

### 4. Escalonamento

O agente faz o grosso. O advogado recebe o resíduo, num arquivo pronto para responder:

```text
CONSULTA-ADVOGADO-<assunto>-AAAA-MM-DD.md
```

Perguntas fechadas, contexto mínimo, o que já foi apurado e com base em qual fonte, as interpretações possíveis com o risco de cada uma, o impacto prático da resposta e a urgência. Não é "dá uma olhada nesse contrato".

## Escopo

LGPD e privacidade · políticas de privacidade · cookies · termos de uso · contratos de desenvolvimento e licenciamento de software · SaaS · CDC e comércio eletrônico · pagamentos, cancelamentos e reembolsos · responsabilidade civil · propriedade intelectual e Lei de Software · marcas e INPI · uso de imagem · crianças e adolescentes · eventos esportivos e regulamentos · documentação de conformidade

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

Copie `dados-empresa.exemplo.md` para `dados-empresa.md` e preencha. A skill lê esse arquivo antes de redigir contratos e políticas — o que não estiver lá vira `[PREENCHER]` no documento, nunca é inventado. O `dados-empresa.md` não é versionado.

## Estrutura

```text
legal-br-skill/legal-br/
├── SKILL.md                    modo de operação
├── references/                 8 roteiros temáticos
├── templates/                  4 modelos de saída
├── dados-empresa.exemplo.md
├── FONTES-OFICIAIS.md          catálogo com o link oficial de cada arquivo
├── ATUALIZAR-FONTES.bat/.ps1   baixa e valida as 29 fontes
└── fontes/                     biblioteca local (gerada)
```

## Limites

Não substitui advogado. Não emite parecer. Não avalia caso concreto em litígio. Não cobre direito trabalhista, tributário, societário nem contratação pública — esses temas são escalonados por definição.

A biblioteca local é um snapshot com data registrada. Quando a vigência de uma norma for material para a resposta, o agente valida na fonte oficial online, e a fonte vigente prevalece sobre a cópia local.

## Licença

[MIT](LICENSE).

Os textos legais baixados pelo `ATUALIZAR-FONTES.bat` são atos oficiais e não são objeto de proteção autoral (Lei 9.610/1998, art. 8º, IV). Eles não são redistribuídos neste repositório — o script os obtém direto da fonte oficial.
