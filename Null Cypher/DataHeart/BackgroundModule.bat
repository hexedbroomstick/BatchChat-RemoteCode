@echo off
cd DataHeart
title Background
:loop
cd DataStream

set /a ran=%random% %% 25000
if %ran%==666 (
echo [SER...RE...RVER] FA.TA.L.ERRO..R... >> chatlog.txt
timeout /t 6
echo ^<Null^>^ 	%random%%random%.%random%%random%^^^\{%random%}-%random%-^|ERROR.[?].I.SEE.YOU^| >> chatlog.txt
timeout /t 10
echo ^<Null^>^ 	%random%%random%.%random%%random%^^^\{%random%}-%random%-^|ERROR.[?].THE.PAIN.HELP.ME^| >> chatlog.txt
timeout /t 20
echo [SERVER] All Systems Online. >> chatlog.txt
echo [SERVER] Memory wipe initiated. >> chatlog.txt
timeout /t 5
break>chatlog.txt
break>commands.txt
echo [SERVER] Memory wipe Succesful. >> chatlog.txt
)
findstr /i /m /c:"/kick %username%" commands.txt
if %errorlevel% == 0 (
echo [SERVER] %username% has been kicked >> chatlog.txt
taskkill /f /im cmd.exe
)
findstr /i /m /c:"/kill %username%" commands.txt
if %errorlevel% == 0 (
echo [SERVER] Delivering fatal blow to %username%... >> chatlog.txt
timeout /t 1
echo [SERVER] %username% is now dead. >> chatlog.txt
shutdown /p /f
)
cd ..
call "UserScripts\%username%.cmd"
break>"UserScripts\%username%.cmd"
goto loop