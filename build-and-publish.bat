@echo off
setlocal

echo Executando build...
call "%~dp0build.bat"
if errorlevel 1 exit /b %errorlevel%

echo Executando publish...
call "%~dp0publish.bat"
exit /b %errorlevel%