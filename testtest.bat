@echo off
SetLocal EnableDelayedExpansion

set a=MTSRouter-8EB92C

for /f "tokens=2 delims=: " %%A in (C:\log.txt) do (
	set "m=%%A"
)
echo %m%
pause

if "%m%"=="%a%" (
	pause
	echo "It's Yuzniy"
	call C:\myBat\statIP.bat
) else (
	echo "It's not Yuzniy"
	call C:\myBat\othersIP.bat
)
pause