@echo off
color a
cd DataHeart
title Message Module
:loop
cls
type DataStream\chatlog.txt
)
(PATHPING 127.0.0.1 -n -q 1 -p 500)>NUL
goto loop