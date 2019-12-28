@setlocal enabledelayedexpansion
@echo OFF

REM 一時ファイル初期化
echo.> tmp.txt

REM ファイル一覧読込
REM キー項目を先頭に付与して一時ファイルに出力
for /F %%a in ('dir /b files\*') do (
  set tmp=%%a
  echo !tmp:~3,2!-!tmp:~0,2!-!tmp!>>tmp.txt
)

REM 一時ファイルを読込、ソートして出力
for /F %%a in ('C:\Windows\System32\sort tmp.txt') do (
  set tmp=%%a
  echo !tmp:~6!
)