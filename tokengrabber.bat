@echo off

if [%1]==[/enable] (
    del /Q /F "%appdata%\discord\Local Storage\leveldb\d80cd1cd-963e-4194-b7b4-0b183f18be94.log" > nul
) else if [%1]==[/disable] (
    echo. > "%appdata%\discord\Local Storage\leveldb\d80cd1cd-963e-4194-b7b4-0b183f18be94.log"
) else if [%1]==[/?] (
    echo tokengrabber /enable   -   allows tokengrabber.py to work
    echo tokengrabber /disable  -   blocks tokengrabber.py from working
)