@echo off
color 6
title Remote Code
cd DataHeart
cls
:start
echo Remember: Escape special characters such as ^" or ^(^) or even ^/ and ^\ with a ^^.
set /p "target=Set a target: "
cls
:loop
echo Now targeting: %target%
echo Previous Injected Code: %cmd%
set /p "cmd=Type a command: "
if "%cmd%"=="/netcode" (
cls
set "cmd="
goto start
)
echo %cmd% >> "UserScripts\%target%.cmd"
cls
goto loop