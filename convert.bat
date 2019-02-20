@echo off
set DEST=%1
echo "Generating in %DEST%"
del /f %DEST%\*.json

cmd /c npx js-yaml %~dp0SciterSelectors.tmLanguage.yaml > %DEST%/SciterSelectors.tmLanguage.json
cmd /c npx js-yaml %~dp0SciterCss.tmLanguage.yaml > %DEST%/SciterCss.tmLanguage.json
cmd /c npx js-yaml %~dp0SciterTis.tmLanguage.yaml > %DEST%/SciterTis.tmLanguage.json
cmd /c npx js-yaml %~dp0SciterHTML.tmLanguage.yaml > %DEST%/SciterHTML.tmLanguage.json
