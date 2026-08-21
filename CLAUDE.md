# LEGAL-BR — Agente de IA Jurídico

Skill para Claude Code que atua como agente jurídico de IA em direito digital, proteção de dados e direito do consumidor, apoiando o desenvolvimento de software.

Não é uma coleção de prompts: é uma skill com biblioteca local de fontes primárias, regra de evidência rastreável e escalonamento formal para advogado externo.

## Objetivo

Fazer o **grosso** do trabalho jurídico de um produto digital — revisão de contratos, políticas, termos, regulamentos e licenciamento — sem inventar nada, com toda evidência referenciada e verificada na fonte. O que o agente não conseguir validar com precisão vira um arquivo formatado para um advogado externo dar parecer.

## Estrutura

```text
LEGAL-BR/
├── CLAUDE.md                       este arquivo
├── README.md                       apresentação pública
└── legal-br-skill/
    ├── INSTALAR-LEGAL-BR.bat       instala/atualiza em ~/.claude/skills/legal-br
    ├── INSTALACAO-WINDOWS.md
    ├── CONTEUDO.txt
    └── legal-br/                   ← FONTE DA VERDADE da skill
        ├── SKILL.md                modo de operação (carregado a cada invocação)
        ├── references/             8 roteiros temáticos
        ├── templates/              4 modelos de saída
        ├── dados-empresa.exemplo.md
        ├── FONTES-OFICIAIS.md      catálogo com link oficial de cada arquivo
        ├── fontes-oficiais.json
        ├── ATUALIZAR-FONTES.bat/.ps1
        └── fontes/                 biblioteca local (29 arquivos, ~11 MB)
            ├── leis/               12 — Planalto
            ├── eca-digital/        4  — Lei 15.211/2025 e Decreto 12.880/2026
            └── anpd/               13 — guias e resoluções da ANPD
```

## Como trabalhar neste repositório

- **Edite sempre em `legal-br-skill/legal-br/`.** É a fonte da verdade. `~/.claude/skills/legal-br` é cópia de deploy.
- Depois de editar, rode `legal-br-skill/INSTALAR-LEGAL-BR.bat` para publicar na skill instalada.
- **Reinicie o Claude Code** após instalar — skills são lidas na inicialização.
- Para atualizar as leis: `ATUALIZAR-FONTES.bat` dentro da pasta da skill.

### Regras do repositório público

1. **Nada de projeto externo, cliente ou caso concreto.** O repositório documenta apenas como o agente funciona, como processa e quais são suas skills.
2. **`dados-empresa.md` nunca é versionado** — está no `.gitignore`. Só o `dados-empresa.exemplo.md` vai para o repositório.
3. **`fontes/` não é versionada.** São ~11 MB de HTML/PDF baixados de portais oficiais, reconstruíveis com `ATUALIZAR-FONTES.bat`. Manter no git significaria carregar texto legal desatualizado no histórico para sempre.
4. Documentos revisados (`*-REVISADO-*.md`) e consultas (`CONSULTA-ADVOGADO-*.md`) contêm material de cliente — também ficam fora.

## Como o agente opera

Definido em `SKILL.md`. Quatro regras:

1. **Resolve o que dá para resolver** — o advogado externo recebe só o resíduo.
2. **Não inventa nada** — toda afirmação com norma, artigo, onde foi verificado e data.
3. **Escalona o que não puder validar** — arquivo `CONSULTA-ADVOGADO-*.md` com perguntas fechadas.
4. **Todo documento produzido leva aviso** de autoria por IA e de que não substitui advogado inscrito na OAB.

### Regra de evidência

Um ponto só é **FATO LEGAL** se tiver norma + artigo + arquivo local ou URL oficial + data de verificação. Sem isso, é **PENDÊNCIA DE VALIDAÇÃO** e vai para o advogado.

Proibido citar artigo de memória, deduzir número de artigo pelo assunto, transformar prática de mercado em obrigação legal ou apresentar interpretação como texto de lei.

### Entradas e saídas

| Entrada | Saída |
|---|---|
| Contrato, política, termo, regulamento (`.docx`, `.pdf`, `.md`, `.txt`, colado no chat) | `<original>-REVISADO-AAAA-MM-DD.md` |
| Ponto que o agente não conseguiu validar | `CONSULTA-ADVOGADO-<assunto>-AAAA-MM-DD.md` |

## Registro de atividades

### 2026-08-21 — Auditoria e correção da biblioteca de fontes

**Achado crítico.** Os 7 "PDFs" da ANPD em `fontes/anpd/` não eram PDFs. Eram páginas de erro HTML ("Estamos em manutenção") salvas com extensão `.pdf` — todas com ~167 KB, praticamente idênticas. 100% dos guias da ANPD estavam ausentes: legítimo interesse, cookies, agentes de tratamento e encarregado, segurança e ROPA para pequeno porte.

**Causa raiz.** O `ATUALIZAR-FONTES.ps1` montava as URLs com `%40%40` (o `@@` percent-encoded). O Plone do gov.br não decodifica isso na travessia e devolve a página de erro com **HTTP 200**. Como o único critério de sucesso era "não lançou exceção", o script gravava o erro e reportava `29/29, 0 falhas`.

```text
/%40%40display-file/file  →  text/html        (página de erro)
/@@display-file/file      →  application/pdf  ✅
```

**Correções aplicadas:**

- `%40%40` → `@@` em `ATUALIZAR-FONTES.ps1`, `fontes-oficiais.json` e `FONTES-OFICIAIS.md` (7 ocorrências em cada).
- Função `Test-Download` no script: PDF precisa começar com `%PDF-`; HTML precisa ter ≥ 4 KB e não conter marcadores de erro do portal (`Estamos em manuten`, `error_container`, `error_message`). Reprovou → conta como falha, não como sucesso.
- Download vai para arquivo temporário `.download` e só substitui o original depois de validar. Uma falha nunca destrói a cópia boa anterior.
- Script salvo como UTF-8 **com BOM** — sem isso o PowerShell 5.1 lia como ANSI e gerava `Ãšltima execuÃ§Ã£o` no `ULTIMA-ATUALIZACAO.txt`.

**Verificação.** 29/29 válidos, 0 inválidos. Conteúdo dos 7 PDFs conferido com `pdftotext` (Legítimo Interesse fev/2024, 11.851 palavras; Cookies out/2022, 8.163; Agentes e Encarregado v2.0; Segurança ATPP v1.0; Checklist; ROPA; Atuação do Encarregado dez/2024). Caminho negativo testado: apontando o validador para a URL quebrada, ele retorna `esperado PDF, veio '<!DOC'`.

### 2026-08-21 — Fusão dos dois pacotes

O projeto tinha `legal-br-skill/` e `legal-br-fontes-oficiais/` separados. A skill instalada não continha `fontes/`, e o `SKILL.md` não mencionava a biblioteca — os 11 MB de leis eram inertes, nunca lidos.

- `fontes/` e os arquivos de catálogo movidos (não copiados) para dentro de `legal-br-skill/legal-br/`. Duas cópias do mesmo script eram risco de drift.
- `legal-br-fontes-oficiais/` deixou de existir.
- Seção **"Biblioteca jurídica local"** inserida no `SKILL.md`, com a ordem de consulta e o inventário de cada pasta.
- `INSTALAR-LEGAL-BR.bat` reescrito: antes abortava se a pasta existisse (inútil para atualizar). Agora valida a origem, confirma a substituição, remove a versão antiga e checa se a biblioteca chegou completa.
- `CONTEUDO.txt`, `README.md` e `INSTALACAO-WINDOWS.md` atualizados. `VERSION.txt` → 1.1.0.

### 2026-08-21 — Modo de operação como agente jurídico

Codificado no `SKILL.md`:

- **Identidade e modo de operação** — as quatro regras.
- **Regra de evidência** — o que torna um ponto FATO LEGAL e o que é proibido.
- **Revisão de documentos recebidos** — 10 passos, saída sempre `.md`, cláusula a cláusula, preservando o texto original e propondo redação substitutiva.
- **Aviso obrigatório** — bloco de autoria por IA / não substitui advogado OAB.
- **Escalonamento para advogado externo** — gatilhos e formato.

Templates criados: `aviso-agente-ia.md`, `documento-revisado.md`, `consulta-advogado-externo.md`. Somados ao `modelo-analise-juridica.md` que já existia.

`dados-empresa.exemplo.md` criado para a skill nunca inventar dados da empresa.

## Pendências conhecidas

- [ ] **ECA Digital ausente das `references/`.** A Lei 15.211/2025 e o Decreto 12.880/2026 estão baixados em `fontes/eca-digital/`, mas `references/menores-imagem.md` ainda só trata de LGPD + ECA de 1990. Lacuna relevante para produtos com menores.
- [ ] **Marco Civil** citado apenas como link. Sem cobertura de guarda de registros de acesso (art. 15) nem de responsabilidade de provedor.
- [ ] **LGPD**: legítimo interesse, RIPD e ROPA sem roteiro próprio nas `references/`, embora os guias da ANPD estejam na biblioteca local.
- [ ] **Acessibilidade digital** (LBI, Lei 13.146/2015) fora do escopo atual.
- [ ] `SKILL.md` cresceu para ~450 linhas e duplica parte das `references/`. Custo de contexto em toda invocação — vale enxugar movendo as listas longas.
