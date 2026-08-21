# INSTALAÇÃO — Legal BR no Claude Code

## Opção 1 — Instalador (recomendada)

1. Descompacte o ZIP.
2. Execute `INSTALAR-LEGAL-BR.bat`.

Ele copia a skill e a biblioteca local de fontes (~11 MB) para:

```text
%USERPROFILE%\.claude\skills\legal-br
```

Rodar de novo atualiza a instalação existente — ele pede confirmação antes de substituir.

## Opção 2 — Cópia manual (skill pessoal)

Copie a pasta `legal-br` inteira para:

```text
%USERPROFILE%\.claude\skills\
```

Resultado esperado:

```text
C:\Users\SEU_USUARIO\.claude\skills\legal-br\SKILL.md
C:\Users\SEU_USUARIO\.claude\skills\legal-br\fontes\leis\03-lgpd-lei-13709-2018-compilado.html
```

Copie a pasta **inteira**. Sem `fontes/`, a skill perde a biblioteca local e passa a depender só de consulta online.

## Opção 3 — Apenas em um projeto

Copie a pasta `legal-br` para:

```text
SEU_PROJETO\.claude\skills\
```

Resultado:

```text
SEU_PROJETO\.claude\skills\legal-br\SKILL.md
```

## Testar

Abra o Claude Code e use:

```text
/legal-br
```

## Atualizar as fontes oficiais

Dentro da pasta instalada, execute:

```text
ATUALIZAR-FONTES.bat
```

## Observação

Se a pasta `.claude\skills` não existia quando o Claude Code foi iniciado, reinicie o Claude Code após criá-la.
