@setlocal enabledelayedexpansion
@echo OFF

REM �ꎞ�t�@�C��������
echo.> tmp.txt

REM �t�@�C���ꗗ�Ǎ�
REM �L�[���ڂ�擪�ɕt�^���Ĉꎞ�t�@�C���ɏo��
for /F %%a in ('dir /b files\*') do (
  set tmp=%%a
  echo !tmp:~3,2!-!tmp:~0,2!-!tmp!>>tmp.txt
)

REM �ꎞ�t�@�C����Ǎ��A�\�[�g���ďo��
for /F %%a in ('C:\Windows\System32\sort tmp.txt') do (
  set tmp=%%a
  echo !tmp:~6!
)