@echo off
color c
cd DataHeart
cd DataStream
title Text Module
echo %USERNAME% joined the server at the time %TIME% >> chatlog.txt
cls
:loop
set /p "msg=Say Something: "
if "%msg%"=="/netcode" (
findstr /i /m /c:"%username%" admin.txt
cls
if %errorlevel% == 0 (
cd ..
start cmd /k Call TargetModule.bat
cd DataStream
))
echo %USERNAME%: %msg% >> chatlog.txt
if "%msg%"=="/admin" (
echo [SERVER] Listing server Admins: >> chatlog.txt
type admin.txt >> chatlog.txt
)
if "%msg%"=="/wipe" (
findstr /i /m /c:"%username%" admin.txt
if %errorlevel% == 0 (
break>commands.txt
break>chatlog.txt
echo [SERVER] Message wipe successful.>> chatlog.txt
echo [SERVER] New chat session initiated by Admin at time %time% on %date%.>> chatlog.txt
))
findstr /i /m /c:"%username%" admin.txt
cls
if %errorlevel% == 0 (
if /i "%msg:~0,1%"=="/" (
echo %username%: %msg% >> commands.txt
))
cls
goto loop