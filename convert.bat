cls
set DEST=%~dp0..\..\syntaxes
del /f %DEST%\*.json

cmd /c npx js-yaml %~dp0SciterSelectors.tmLanguage.yaml > %DEST%/SciterSelectors.tmLanguage.json
cmd /c npx js-yaml %~dp0SciterCss.tmLanguage.yaml > %DEST%/SciterCss.tmLanguage.json
cmd /c npx js-yaml %~dp0SciterTis.tmLanguage.yaml > %DEST%/SciterTis.tmLanguage.json
copy /y %~dp0SciterHTML.json %DEST%

