@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Working dir: %CD%
echo.
echo [1/5] git init...
git init
echo [2/5] git add...
git add -A
echo [3/5] git commit...
git commit -m "init workflow" 2>nul
echo [4/5] set main branch...
git branch -M main
echo [5/5] git push...
git remote add origin https://github.com/LIUQIMINGXI/binance-data.git 2>nul
git push -u origin main
echo.
echo Done!
pause
