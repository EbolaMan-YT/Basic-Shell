@echo off
cd files
powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Enter port to listen on:', 'BasicShell')}" > listen.tmp
set /p listen=<listen.tmp
del listen.tmp
start cmd /k nc -lvnp %listen%