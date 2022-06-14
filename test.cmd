SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
SET UNITYEXE="S:\Programs\Unity\2021.1.2f1\Editor\Unity.exe"
SET MODE=editmode
%UNITYEXE% -batchmode -batchmode -logFile Logs/test.log -projectPath full-sample -runTests -testPlatform editmode -testResults Logs/editmode-results.xml -assemblyNames ReactUnity.Tests;ReactUnity.Tests.Editor
"Logs/extent.exe" -i Logs/editmode-results.xml -o Logs/editmode-results/
