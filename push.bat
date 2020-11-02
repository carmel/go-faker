@echo off
chcp 65001 > nul
set c=
REM :1
set /p c=提交说明信息:
if "%c%"=="" (
    set c=%date:~3,10%
	REM goto 1
)
FOR /F "delims=" %%i IN ('VER') DO SET vs=%%i
@echo on
git add .
git commit -m "%c% %% vs"
git push
::pause > nul
::exit