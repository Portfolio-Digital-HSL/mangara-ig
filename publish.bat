@echo off
setlocal

set "ROOT=%CD%"
set "WEB=%ROOT%\web-root"
set "TEMP=%ROOT%\temp"
set "REGISTRY=%ROOT%\ig-registry\fhir-ig-list.json"
set "HISTORY=%ROOT%\ig-history"
set "TEMPLATES=%WEB%\templates"

echo Limpando pasta temp...
if exist temp rmdir /s /q temp
mkdir temp

echo Limpando web-root/ig-build-zips...
if exist web-root\ig-build-zips rmdir /s /q web-root\ig-build-zips

echo Limpando web-root/fhir...
if exist web-root\fhir rmdir /s /q web-root\fhir

echo Gerando package registry...
call java -Xms16g -Xmx24g -Dfile.encoding=UTF-8 -jar input-cache\publisher.jar -generate-package-registry "%WEB%"
if errorlevel 1 exit /b %errorlevel%

echo Executando go-publish...
call java -Xms16g -Xmx24g -Dfile.encoding=UTF-8 -jar input-cache\publisher.jar -go-publish -source "%ROOT%" -web "%WEB%" -temp "%TEMP%" -registry "%REGISTRY%" -history "%HISTORY%" -templates "%TEMPLATES%"
exit /b %errorlevel%