@echo off
setlocal

echo Limpando pasta do FSH...
if exist fsh-generated rmdir /s /q fsh-generated

echo Gerando FSH...
call npx sushi .
if errorlevel 1 exit /b %errorlevel%

echo Clonando ig-history...
if exist ig-history rmdir /s /q ig-history
call git clone https://github.com/HL7/fhir-ig-history-template.git ig-history
if errorlevel 1 exit /b %errorlevel%

echo Clonando ig-registry...
if exist ig-registry rmdir /s /q ig-registry
call git clone https://github.com/FHIR/ig-registry.git ig-registry
if errorlevel 1 exit /b %errorlevel%

echo Iniciando IG-Publisher (build)...
call java -Xms4g -Xmx8g -Dfile.encoding=UTF-8 -jar input-cache\publisher.jar -ig . -tx "https://tx.gointerop.com/r4" -authorise-non-conformant-tx-servers
exit /b %errorlevel%