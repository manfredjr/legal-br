# LEGAL-BR - Agente de IA Jurídico

Skill para Claude Code que atua como agente jurídico de IA em direito digital, proteção de dados e direito do consumidor, apoiando o desenvolvimento de software.

A skill traz biblioteca local de fontes primárias, regra de evidência rastreável e escalonamento formal para advogado externo.

## Objetivo

Fazer o grosso do trabalho jurídico de um produto digital - revisão de contratos, políticas, termos, regulamentos e licenciamento - sem inventar nada, com toda evidência referenciada e verificada na fonte. O que o agente não conseguir validar com precisão vira um arquivo formatado para um advogado externo dar parecer.

## Estrutura

```text
LEGAL-BR/
  CLAUDE.md                       este arquivo
  README.md                       apresentacao publica
  legal-br-skill/
    INSTALAR-LEGAL-BR.bat         instala/atualiza em ~/.claude/skills/legal-br
    INSTALACAO-WINDOWS.md
    CONTEUDO.txt
    legal-br/                     FONTE DA VERDADE da skill
      SKILL.md                    modo de operacao (carregado a cada invocacao)
      references/                 8 roteiros tematicos
      templates/                  4 modelos de saida
      dados-empresa.exemplo.md
      FONTES-OFICIAIS.md          catalogo com link oficial de cada arquivo
      fontes-oficiais.json
      ATUALIZAR-FONTES.bat/.ps1
      fontes/                     biblioteca local (29 arquivos, ~11 MB)
        leis/                     12 - Planalto
        eca-digital/              4  - Lei 15.211/2025 e Decreto 12.880/2026
        anpd/                     13 - guias e resolucoes da ANPD
```

## Como trabalhar neste repositório

- **Edite sempre em `legal-br-skill/legal-br/`.** É a fonte da verdade. `~/.claude/skills/legal-br` é cópia de deploy.
- Depois de editar, rode `legal-br-skill/INSTALAR-LEGAL-BR.bat` para publicar na skill instalada.
- **Reinicie o Claude Code** após instalar - skills são lidas na inicialização.
- Para atualizar as leis: `ATUALIZAR-FONTES.bat` dentro da pasta da skill.

### Padrão de escrita

**Todo texto produzido neste projeto passa pela skill `/anthropic-skills:humanizar-ptbr`** antes de ser entregue. Sem exceção.

Vale para tudo, inclusive o que vai para o GitHub: documentos revisados, consultas para advogado externo, minutas de contrato e política, `SKILL.md`, `references/`, `templates/`, `README.md`, este arquivo e mensagens de commit.

Motivo: documento jurídico com cara de texto gerado por máquina perde credibilidade justamente com quem precisa confiar nele - cliente, contraparte e advogado externo.

Na prática: rode a skill sobre o texto antes de gravar o arquivo final. Se for longo, rode por seção.

### Autoria dos commits

O Claude não entra como co-autor nem como contributor. Em nenhuma hipótese.

Proibido em qualquer commit, branch ou PR deste repositório:

- o trailer `Co-Authored-By: Claude <noreply@anthropic.com>`, em qualquer variação de nome ou e-mail;
- qualquer outro trailer de co-autoria apontando para ferramenta de IA;
- assinatura do tipo "Generated with Claude Code" no corpo do commit, na descrição do PR ou em release;
- configurar `user.name` ou `user.email` do git com identidade que não seja a da MT.

Os commits são da MT - Manfred Tecnologia. A mensagem descreve o que mudou e por quê, e para aí.

Citar `Claude Code` como plataforma alvo da skill é outra coisa, e é permitido. A skill roda no Claude Code, então o README e o `SKILL.md` mencionam o produto. O que não pode é o Claude figurar como autor do trabalho.

Antes de qualquer push, confira:

```bash
git log --format=%B | Select-String -Pattern "co-authored"
```

Sem saída significa limpo.

Depois do push, confirme que a lista de contributors tem uma pessoa só:

```bash
gh api repos/manfredjr/legal-br/contributors --jq ".[].login"
```

Um trailer que escapa é caro de tirar: obriga a reescrever o histórico com `filter-branch`, forçar o push e esperar o GitHub recalcular o cache de `/stats/contributors`, que é assíncrono e demora. Sai muito mais barato não deixar entrar.

### Regras do repositório público

1. **Nada de projeto externo, cliente ou caso concreto.** O repositório documenta apenas como o agente funciona, como processa e quais são suas skills.
2. **`dados-empresa.md` nunca é versionado** - está no `.gitignore`. Só o `dados-empresa.exemplo.md` vai para o repositório.
3. **`fontes/` não é versionada.** São ~11 MB de HTML/PDF baixados de portais oficiais, reconstruíveis com `ATUALIZAR-FONTES.bat`. Manter no git significaria carregar texto legal desatualizado no histórico para sempre.
4. Documentos revisados (`*-REVISADO-*.md`) e consultas (`CONSULTA-ADVOGADO-*.md`) contêm material de cliente - também ficam fora.

## Como o agente opera

Definido em `SKILL.md`. Quatro regras:

1. Resolve o que dá para resolver. O advogado externo recebe só o resíduo.
2. Não inventa nada. Toda afirmação com norma, artigo, onde foi verificado e data.
3. Escalona o que não puder validar, em arquivo `CONSULTA-ADVOGADO-*.md` com perguntas fechadas.
4. Sinaliza só o que não conseguiu validar. Documento padrão sai limpo.

### O agente é um filtro

Este é o ponto central do desenho, e é fácil errar para o lado seguro.

Num sistema, a maioria dos documentos jurídicos é padrão: repete-se entre projetos, já foi validada antes, não tem nada de particular. Esses documentos passam limpos. Sem aviso de autoria por IA, sem carimbo de "revisar com advogado", sem ressalva genérica.

Só o documento com PENDÊNCIA DE VALIDAÇÃO sai sinalizado - e a sinalização nomeia o ponto, delimita o que já está verificado e aponta para a consulta gerada.

Motivo: ressalva em todo documento não protege ninguém. Vira ruído, o leitor para de ler o rodapé e a sinalização que importava se perde junto com as outras. Só funciona enquanto for exceção.

Termômetro: se quase todo documento estiver saindo sinalizado, o problema está na análise, que anda escalonando o que deveria ter resolvido.

### Regra de evidência

Um ponto só é FATO LEGAL se tiver norma + artigo + arquivo local ou URL oficial + data de verificação. Sem isso, é PENDÊNCIA DE VALIDAÇÃO e vai para o advogado.

Proibido citar artigo de memória, deduzir número de artigo pelo assunto, transformar prática de mercado em obrigação legal ou apresentar interpretação como texto de lei.

### Entradas e saídas

| Entrada | Saída |
|---|---|
| Contrato, política, termo, regulamento (`.docx`, `.pdf`, `.md`, `.txt`, colado no chat) | `<original>-REVISADO-AAAA-MM-DD.md` |
| Ponto que o agente não conseguiu validar | `CONSULTA-ADVOGADO-<assunto>-AAAA-MM-DD.md` |

## Registro de atividades

### 2026-08-21 - Auditoria e correção da biblioteca de fontes

**Achado crítico.** Os 7 "PDFs" da ANPD em `fontes/anpd/` não eram PDFs. Eram páginas de erro HTML ("Estamos em manutenção") salvas com extensão `.pdf` - todas com ~167 KB, praticamente idênticas. 100% dos guias da ANPD estavam ausentes: legítimo interesse, cookies, agentes de tratamento e encarregado, segurança e ROPA para pequeno porte.

**Causa raiz.** O `ATUALIZAR-FONTES.ps1` montava as URLs com `%40%40` (o `@@` percent-encoded). O Plone do gov.br não decodifica isso na travessia e devolve a página de erro com **HTTP 200**. Como o único critério de sucesso era "não lançou exceção", o script gravava o erro e reportava `29/29, 0 falhas`.

```text
/%40%40display-file/file  ->  text/html        (página de erro)
/@@display-file/file      ->  application/pdf (correto)
```

**Correções aplicadas:**

- `%40%40` -> `@@` em `ATUALIZAR-FONTES.ps1`, `fontes-oficiais.json` e `FONTES-OFICIAIS.md` (7 ocorrências em cada).
- Funcao `Test-Download` no script: PDF precisa comecar com `%PDF-`; HTML precisa ter no minimo 4 KB e nao pode conter marcadores de erro do portal (`Estamos em manuten`, `error_container`, `error_message`). Reprovou, conta como falha, nao como sucesso.
- Download vai para arquivo temporário `.download` e só substitui o original depois de validar. Uma falha nunca destrói a cópia boa anterior.
- Script salvo como UTF-8 **com BOM** - sem isso o PowerShell 5.1 lia como ANSI e gerava `Ãšltima execuÃ§Ã£o` no `ULTIMA-ATUALIZACAO.txt`.

**Verificação.** 29/29 válidos, 0 inválidos. Conteúdo dos 7 PDFs conferido com `pdftotext` (Legítimo Interesse fev/2024, 11.851 palavras; Cookies out/2022, 8.163; Agentes e Encarregado v2.0; Segurança ATPP v1.0; Checklist; ROPA; Atuação do Encarregado dez/2024). Caminho negativo testado: apontando o validador para a URL quebrada, ele retorna `esperado PDF, veio '<!DOC'`.

### 2026-08-21 - Fusão dos dois pacotes

O projeto tinha `legal-br-skill/` e `legal-br-fontes-oficiais/` separados. A skill instalada não continha `fontes/`, e o `SKILL.md` não mencionava a biblioteca - os 11 MB de leis eram inertes, nunca lidos.

- `fontes/` e os arquivos de catálogo movidos (não copiados) para dentro de `legal-br-skill/legal-br/`. Duas cópias do mesmo script eram risco de drift.
- `legal-br-fontes-oficiais/` deixou de existir.
- Seção **"Biblioteca jurídica local"** inserida no `SKILL.md`, com a ordem de consulta e o inventário de cada pasta.
- `INSTALAR-LEGAL-BR.bat` reescrito: antes abortava se a pasta existisse (inútil para atualizar). Agora valida a origem, confirma a substituição, remove a versão antiga e checa se a biblioteca chegou completa.
- `CONTEUDO.txt`, `README.md` e `INSTALACAO-WINDOWS.md` atualizados. `VERSION.txt` -> 1.1.0.

### 2026-08-21 - Modo de operação como agente jurídico

Codificado no `SKILL.md`:

- **Identidade e modo de operação** - as quatro regras.
- **Regra de evidência** - o que torna um ponto FATO LEGAL e o que é proibido.
- **Revisão de documentos recebidos** - 10 passos, saída sempre `.md`, cláusula a cláusula, preservando o texto original e propondo redação substitutiva.
- **Aviso obrigatório** - bloco de autoria por IA / não substitui advogado OAB.
- **Escalonamento para advogado externo** - gatilhos e formato.

Templates criados: `aviso-agente-ia.md`, `documento-revisado.md`, `consulta-advogado-externo.md`. Somados ao `modelo-analise-juridica.md` que já existia.

`dados-empresa.exemplo.md` criado para a skill nunca inventar dados da empresa.

### 2026-08-21 - Correção: o agente é filtro, não carimbo

A primeira versão do modo de operação saiu errada. Tinha sido implementado um aviso obrigatório de autoria por IA em **todo** documento produzido - o oposto do que o projeto precisa.

Corrigido:

- Removida a seção "Aviso obrigatório" do `SKILL.md`; entrou "O agente é um filtro".
- `templates/aviso-agente-ia.md` excluído. No lugar, `templates/sinalizacao-revisao.md`, usado só quando há pendência.
- `documento-revisado.md`: documento sem pendência termina na seção 9, sem ressalva. A seção de pendências aceita "Nenhuma" e proíbe inventar ressalva para preencher.
- `consulta-advogado-externo.md`: o rodapé passou a explicar como a consulta foi montada, em vez de repetir aviso genérico.
- `README.md` reescrito no mesmo sentido.

Regra que ficou: documento validado integralmente em fonte oficial sai limpo. Só o que tem ponto pendente sai sinalizado, e a sinalização nomeia o ponto.

### 2026-08-21 - Remocao do Claude como co-autor e contributor

Os dois primeiros commits do repositorio subiram com o trailer `Co-Authored-By: Claude`. O GitHub indexou naquele momento e passou a listar duas pessoas em Contributors.

O que foi preciso fazer:

1. Reescrever as mensagens dos commits com `git filter-branch -f --msg-filter 'sed "/Co-Authored-By/d"' -- --all`.
2. Empurrar o historico reescrito.
3. Esperar o GitHub recalcular `/stats/contributors`, que alimenta a barra lateral e e assincrono. Enquanto processava, o endpoint respondia vazio e a pagina continuava mostrando duas pessoas.

Detalhe que atrapalhou o diagnostico: o `filter-branch -- --all` reescreve tambem a ref local `refs/remotes/origin/main`. Depois disso o `git push --force-with-lease` responde "Everything up-to-date" mesmo quando o remoto ainda esta desatualizado. Para forcar de verdade, rode `git fetch origin` antes, para a lease comparar com o estado real.

Resultado: 4 commits, todos com autor `manfredjr`, zero trailers de co-autoria, `/contributors` e `/stats/contributors` retornando uma pessoa so.

A regra que saiu disso esta em "Autoria dos commits".

## Pendências conhecidas

- [ ] **ECA Digital ausente das `references/`.** A Lei 15.211/2025 e o Decreto 12.880/2026 estão baixados em `fontes/eca-digital/`, mas `references/menores-imagem.md` ainda só trata de LGPD + ECA de 1990. Lacuna relevante para produtos com menores.
- [ ] **Marco Civil** citado apenas como link. Sem cobertura de guarda de registros de acesso (art. 15) nem de responsabilidade de provedor.
- [ ] **LGPD**: legítimo interesse, RIPD e ROPA sem roteiro próprio nas `references/`, embora os guias da ANPD estejam na biblioteca local.
- [ ] **Acessibilidade digital** (LBI, Lei 13.146/2015) fora do escopo atual.
- [ ] `SKILL.md` cresceu para ~450 linhas e duplica parte das `references/`. Custo de contexto em toda invocação - vale enxugar movendo as listas longas.
