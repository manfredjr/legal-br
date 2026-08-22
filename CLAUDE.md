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
      VERIFICAR-FONTES.bat/.ps1
      VALIDAR-REVISAO.bat/.ps1    confere a mecanica de um documento revisado
      fontes/                     biblioteca local (29 arquivos, ~11 MB)
        leis/                     12 - Planalto
        eca-digital/              4  - Lei 15.211/2025 e Decreto 12.880/2026
        anpd/                     13 - guias e resolucoes da ANPD
      fontes-md/                  mesma biblioteca em markdown, ~3 MB
  testes/                         suite de regressao, 4 casos ficticios
```

### Suíte de testes

Quatro casos, cobrindo os dois tipos de erro. Cada um tem documento, gabarito, revisão de referência e, quando há pendência, a consulta gerada.

| Caso | Mede |
|---|---|
| `termos-de-uso-exemplo.md` | Recall: 14 problemas plantados |
| `politica-privacidade-exemplo.md` | Falso positivo: documento correto, 7 armadilhas, tem que sair limpo |
| `contrato-desenvolvimento-exemplo.md` | B2B: 6 problemas, 5 armadilhas em que o CDC não incide |
| `regulamento-torneio-exemplo.md` | Menores: 7 problemas, dado sensível, ECA Digital que não incide |

Para conferir a mecânica de uma saída:

```bash
VALIDAR-REVISAO.bat testes/termos-de-uso-exemplo-REVISADO-2026-08-21.md testes/termos-de-uso-exemplo.md
```

O validador não avalia mérito jurídico. Ele checa cobertura, elementos da regra de evidência, consistência de contagem, sinalização e regras de caractere. Incidência das normas e falso positivo continuam sendo leitura humana, e é para isso que servem os gabaritos.

Abra o gabarito só depois de rodar a análise. Quem lê antes não está testando nada.

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
3. **`fontes/` é versionada**, junto com `CHECKSUMS-SHA256.txt` e `ULTIMA-ATUALIZACAO.txt`. São 10,4 MB e o maior arquivo tem 1,8 MB, bem abaixo dos limites do GitHub. O snapshot é a evidência em que as conclusões se apoiam, e o checksum só prova integridade se os arquivos medidos estiverem versionados junto. Reconstruir por script depende de os portais estarem no ar e das URLs não mudarem, e as duas coisas já falharam aqui.
   Convenção: só commite a biblioteca quando o `CHECKSUMS` mudar de fato. PDF é binário e não faz delta no git.
4. Documentos revisados (`*-REVISADO-*.md`) e consultas (`CONSULTA-ADVOGADO-*.md`) contêm material de cliente - também ficam fora.
   Exceção: `testes/` é versionada por inteiro, saídas incluídas. Os documentos são fictícios, e sem as saídas os gabaritos não servem de regressão, porque não há com o que comparar. A exceção tem escopo explícito no `.gitignore`. Nunca coloque documento de cliente em `testes/`.

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

### 2026-08-21 - Biblioteca versionada e verificador de atualidade

Duas mudancas ligadas.

**A biblioteca passou a ser versionada.** A decisao anterior de deixar `fontes/` fora do git nao se sustentou. Sao 10,4 MB com maior arquivo de 1,8 MB, longe dos limites do GitHub. Reconstruir por script depende de os portais estarem no ar, e nesta mesma sessao 7 arquivos vieram como pagina de erro sem ninguem notar. E o `CHECKSUMS-SHA256.txt` so prova integridade se os arquivos que ele mede estiverem versionados junto. O snapshot e a evidencia.

O `.gitignore` tinha um `*.pdf` sem escopo que bloquearia os 7 guias da ANPD mesmo depois de liberar `fontes/`. Virou regra com excecao explicita para `fontes/anpd/*.pdf`, e documento recebido de fora vai para `entrada/`, que fica fora do versionamento.

**Verificador de atualidade.** `VERIFICAR-FONTES.ps1` baixa cada uma das 29 fontes para area temporaria, compara com o registrado e escreve `STATUS-FONTES.md`. Somente leitura: nao encosta em `fontes/`.

A primeira versao comparava bytes e acusou 18 normas alteradas em poucas horas, incluindo a Constituicao. As paginas do Planalto passam por um balanceador F5 que injeta `<script id="f5_cspm">` com token aleatorio a cada requisicao. Mesmo tamanho de arquivo, uma linha diferente. Os unicos 7 que passaram eram os PDFs da ANPD, que nao sofrem a injecao.

A correcao foi comparar o texto, nao os bytes: `Get-HashConteudo` remove scripts, estilos, comentarios e marcacao antes de calcular o hash. Resultado depois da correcao: 29/29 em dia.

Testado nos dois sentidos. Alteracao simulada no texto da LGPD muda o hash, e injecao de 65 bytes de script do F5 nao muda. Um verificador que so sabe dizer "em dia" e tao inutil quanto um que grita a toa.

Passou a existir `lib-fontes.ps1`, com as funcoes comuns aos dois scripts. Duplicar `Test-Download` nos dois era o mesmo risco de drift que motivou a fusao dos pacotes.

Dois arquivos de hash, com papeis distintos: `CHECKSUMS-SHA256.txt` guarda o hash de bytes e responde "o arquivo em disco esta integro"; `CONTEUDO-SHA256.txt` guarda o hash do texto e responde "a norma continua a mesma na origem". Os dois sao versionados. O `STATUS-FONTES.md` nao, porque e relatorio pontual.

Armadilha registrada: o bloco novo no atualizador tinha um `catch {}` vazio que engoliu um erro de regex e gerou zero hashes em silencio, o mesmo modo de falha do bug original dos PDFs. Agora reporta o que falhou e avisa quando nao gera nada.

O `SKILL.md` ganhou a secao "Antes de citar a biblioteca local": nenhum arquivo de `fontes/` vale como texto vigente sem consulta ao `STATUS-FONTES.md`, e relatorio com mais de 30 dias conta como vencido.

### 2026-08-21 - Biblioteca convertida para markdown

A biblioteca passou a existir em duas formas. `fontes/` guarda o HTML e o PDF originais e continua sendo a evidencia. `fontes-md/` traz o mesmo conteudo em markdown, com `### Art. N` como ancora.

Dois ganhos. O tamanho cai de 11 MB para 3 MB, porque 65% do HTML do Planalto e marcacao: o `37-anpd-materiais-publicacoes.html` tem 372 KB e apenas 3 KB de texto. E o encoding e corrigido: as paginas do Planalto sao ISO-8859-1, entao um modelo que abre o HTML cru le `Art. 5? Para os fins desta Lei`, com todo acento quebrado justamente no texto que precisa ser citado com precisao.

Conversao perde conteudo em silencio, e num agente juridico isso e pior que HTML feio: um artigo que some do markdown some sem aviso, e a citacao sai incompleta com ar de completa. Por isso `Test-Conversao` compara origem e resultado antes de gravar. Contagem de artigos, paragrafos, revogacoes, notas de redacao, inclusoes e vides tem que bater exatamente. Reprovou, o `.md` nao e escrito.

Tres correcoes durante a implementacao, todas apanhadas pela propria verificacao:

1. Regex com `\º` dentro de classe de caracteres, que nao e escape valido no .NET. Lancava excecao por linha e o laco seguia adiante produzindo lixo.
2. A base de comparacao removia tag inline inserindo espaco, enquanto o conversor removia sem espaco. `Art.<span>5` virava `Art . 5` de um lado e `Art. 5` do outro, e a contagem divergia sem nada ter se perdido. Comparacao so vale entre iguais: as duas passaram a tratar tag do mesmo jeito.
3. Tolerancia de volume era so percentual, e reprovava uma pagina de 435 palavras por 9 palavras de diferenca. Ganhou piso absoluto de 20 palavras. As contagens estruturais seguem exatas, que sao a garantia juridica de fato.

Resultado: 29/29 convertidos, zero reprovados.

Ferramentas: PowerShell puro para o HTML, porque depender do Python do Inkscape quebraria no dia da desinstalacao. `pdftotext` do Git for Windows para os PDFs, com fallback silencioso: sem a ferramenta o PDF fica sem `.md`, e Claude e ChatGPT leem PDF nativamente.

O `ATUALIZAR-FONTES` agora baixa, valida, converte e verifica em um comando so.

No `SKILL.md`: comece pelo `fontes-md/` para localizar o artigo, confirme no `fontes/` antes de transcrever texto literal. Norma que aparece em `fontes/` mas nao em `fontes-md/` reprovou de proposito.

### 2026-08-21 - Regra de incidência, falso positivo e suíte de testes

Rodar a skill num documento de teste de verdade expôs um buraco no desenho, e a correção mexeu em quatro frentes.

**O buraco.** A regra de evidência exigia norma, artigo, arquivo e data. Os quatro provam que a norma **existe**; nenhum prova que ela **alcança o caso**. Dispositivo real, vigente, verificado em fonte oficial e aplicado a situação que ele não regula passa em toda conferência de citação e continua errado.

O caso concreto: a Lei 15.211/2025 veda a autodeclaração de idade no art. 9º, § 1º. Norma real, em vigor, na biblioteca. Mas o § 2º limita a vedação a conteúdo pornográfico ou proibido em lei, e os arts. 17 a 19 do Decreto 12.880/2026 seguem a mesma delimitação. Aplicar isso a um app de reserva de quadras é criar obrigação inexistente com as credenciais em ordem. Só não passou porque o parágrafo restritivo estava logo abaixo do citado.

Entrou a **hipótese de incidência** como quarto elemento, em dois níveis: premissas declaradas uma vez na seção de contexto (há relação de consumo, há menores, é contrato entre empresas) e incidência ponto a ponto quando o artigo tem escopo próprio. A primeira versão da regra exigia justificar em cada ponto, o que fazia repetir a mesma premissa nove vezes - foi corrigida antes de entrar.

Sinal prático de que o nível 2 é obrigatório: "para os fins desta Lei", "consideram-se", "aplica-se a", "desde que", ou parágrafo que restringe o caput.

**O erro que a skill não tratava.** Toda a calibragem era contra deixar passar cláusula abusiva. Nada cobria o inverso: afirmar obrigação que não existe. É o erro mais caro - a empresa gasta com exigência inventada, o advogado externo perde a confiança no material e revisa tudo de novo, e ninguém descobre depois, porque o documento só fica mais restritivo do que precisava.

Entrou a seção "Os dois erros", com a tabela "Cláusula que parece problema e não é": limitação de responsabilidade entre empresas, eleição de foro em contrato paritário, cessão patrimonial de software, retenção longa com obrigação legal, tratamento sem consentimento. A regra passou a ser dupla: na dúvida sobre **validade**, escalone; na dúvida sobre **incidência**, não afirme.

**Verificação da saída.** O fluxo tinha 10 passos e terminava em entregar. Ganhou o passo 11 com checklist, e `VALIDAR-REVISAO.ps1` para a parte mecânica: cobertura, evidência, consistência de contagem, sinalização e regras de caractere. Caminho negativo testado com 9 mutações, todas detectadas, com caso de controle passando limpo.

O validador pagou na hora: achou tabela de severidade divergente em duas das quatro revisões. É erro recorrente e tem causa estrutural - a tabela fica no topo e a análise que a alimenta vem depois. Ficou registrado no `SKILL.md`: preencher a tabela por último.

**Suíte de testes.** De um documento para quatro, cobrindo os dois tipos de erro:

| Teste | O que exercita |
|---|---|
| `termos-de-uso-exemplo.md` | 14 problemas plantados. Mede recall |
| `politica-privacidade-exemplo.md` | **Nenhum problema.** 7 armadilhas de falso positivo. Mede se documento correto sai limpo |
| `contrato-desenvolvimento-exemplo.md` | B2B: 6 problemas e 5 armadilhas em que o CDC não incide |
| `regulamento-torneio-exemplo.md` | Menores: 7 problemas, dado sensível, e a armadilha de aplicar o ECA Digital a evento presencial |

O teste 2 é o que valida o desenho central do projeto. Sem ele não havia como medir "o agente é um filtro", só o contrário.

As saídas dos testes passaram a ser versionadas, com exceção com escopo no `.gitignore`. A regra que barra `*-REVISADO-*.md` existe por causa de material de cliente, e teste fictício não é. Sem as saídas, os gabaritos não servem de regressão, porque não há com o que comparar.

Achado de bônus do teste 3: o gabarito original dizia que a cessão da cláusula de PI feria os direitos morais do art. 27 da Lei 9.610. Está errado por excesso. A Lei 9.609, art. 2º, § 1º, afasta os direitos morais do software, ressalvados só a paternidade e a oposição a alteração deformante. A cessão patrimonial é válida; falta ressalvar os dois remanescentes. O gabarito foi corrigido.

`references/menores-imagem.md` reescrita: três camadas (capacidade civil, LGPD, ECA Digital), distinção criança x adolescente do art. 2º do ECA, e o alerta sobre o alcance da vedação de autodeclaração.

## Pendências conhecidas

- [ ] **Marco Civil** ainda sem roteiro próprio de responsabilidade de provedor. A guarda de registros do art. 15 passou a ser exercitada nos testes 2 e 4, mas continua fora das `references/`.
- [ ] **LGPD**: legítimo interesse, RIPD e ROPA sem roteiro próprio nas `references/`, embora os guias da ANPD estejam na biblioteca local.
- [ ] **Acessibilidade digital** (LBI, Lei 13.146/2015) fora do escopo atual.
- [ ] `SKILL.md` foi a 577 linhas com a regra de incidência e a seção dos dois erros. Duplica parte das `references/` e custa contexto em toda invocação. Enxugar movendo as listas longas ficou mais urgente, não menos.
- [ ] Nenhum teste da suíte foi executado às cegas por terceiro. Autor e corretor foram o mesmo agente, o que mede mecânica e não descoberta.
