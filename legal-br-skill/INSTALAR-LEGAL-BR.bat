@echo off
setlocal enabledelayedexpansion
set "ORIGEM=%~dp0legal-br"
set "DEST=%USERPROFILE%\.claude\skills\legal-br"

echo.
echo Instalando Legal BR em:
echo %DEST%
echo.

if not exist "%ORIGEM%\SKILL.md" (
  echo Erro: nao encontrei "%ORIGEM%\SKILL.md".
  echo Execute este arquivo de dentro da pasta do pacote.
  pause
  exit /b 1
)

if not exist "%USERPROFILE%\.claude\skills" mkdir "%USERPROFILE%\.claude\skills"

if exist "%DEST%" (
  echo A pasta Legal BR ja existe.
  set /p RESP="Substituir a instalacao existente? (S/N): "
  if /i not "!RESP!"=="S" (
    echo Cancelado. Nada foi alterado.
    pause
    exit /b 1
  )
  rmdir /s /q "%DEST%"
  if exist "%DEST%" (
    echo Erro: nao foi possivel remover a instalacao anterior.
    echo Feche o Claude Code e tente novamente.
    pause
    exit /b 1
  )
)

xcopy "%ORIGEM%" "%DEST%\" /E /I /H /Y >nul
if errorlevel 1 (
  echo Erro durante a copia.
  pause
  exit /b 1
)

if not exist "%DEST%\fontes\leis\03-lgpd-lei-13709-2018-compilado.html" (
  echo Aviso: a biblioteca local de fontes nao foi copiada por completo.
  echo Execute ATUALIZAR-FONTES.bat dentro de "%DEST%".
)

echo.
echo Instalacao concluida.
echo Abra o Claude Code e teste com /legal-br
echo.
echo Para atualizar a copia local das leis, execute:
echo   %DEST%\ATUALIZAR-FONTES.bat
pause
