@echo off
color 3
title Tracking Module
cd DataHeart
del /q TrackingData
:loop
echo %username% is online as of %time% and using the computer %computername%. >> "TrackingData\%username%.txt"
cls
echo --------------------------
echo ^| Users currently online ^|
echo --------------------------
echo:
for %%f in (TrackingData\*) do (
    for /f "usebackq delims=" %%l in ("%%f") do (
        echo %%l
    )
)
echo ^<Null^> 
(PATHPING 127.0.0.1 -n -q 1 -p 2000)>NUL
break>"TrackingData\%username%.txt"
goto loop

