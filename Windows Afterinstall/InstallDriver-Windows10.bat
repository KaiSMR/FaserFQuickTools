@echo off
title Treiber Installation by Fabian Seitz
color 89
:Start
cd C:\Users\%username%\Downloads\
cls
echo             ================================================
echo                               Automatische
echo                   Treiber Installation by Fabian Seitz
echo                              Fuer Windows 10
echo             ================================================
echo.
echo            !!!!!!!INTERNET VERBINDUNG WIRD BENOETIGT!!!!!!!
echo            Bitte Geraet auswaehlen!
echo.
echo.
echo   [1]    Latitude E6520 / Notebook
echo   [2]    Latitude E6510 / Notebook
echo   [3]    Precision M6500 / CAD Notebook
echo   [4]    Precision T5500 / CAD PC
echo.
echo   [C]    Google Chrome
echo   [0]    EXIT / Abbruch
echo.
echo.

:Auswahl
set asw=0
set /p asw="Bitte Auswahl eingeben: "

if %asw%==1 goto :E6520
if %asw%==2 goto :E6510
if %asw%==3 goto :M6500
if %asw%==4 goto :T5500

if %asw%==C goto :Chrome
if %asw%==0 goto :exit
if %asw%==exit goto :exit

echo Nächste Auswahl? Bitte eine Zahl von oben waehlen!
goto:Auswahl

:E6520
start https://downloadcenter.intel.com/downloads/eula/25977/Intel-Graphics-Driver-for-Windows-10-and-Windows-7-8-1-15-33-?httpDown=https%3A%2F%2Fdownloadmirror.intel.com%2F25977%2Feng%2Fwin64_153343.4425.exe
start https://downloadcenter.intel.com/downloads/eula/26653/Intel-PROSet-Wireless-Software-and-Drivers-for-Windows-10?httpDown=https%3A%2F%2Fdownloadmirror.intel.com%2F26653%2Feng%2FWireless_19.50.1_PROSet64_Win10.exe
start https://downloadcenter.intel.com/downloads/eula/25016/Intel-Network-Adapter-Driver-for-Windows-10?httpDown=https%3A%2F%2Fdownloadmirror.intel.com%2F25016%2Feng%2FPROWinx64.exe
start https://downloads.dell.com/FOLDER01669864M/1/Input_Driver_VW486_WN_8.1200.101.134_A07.EXE
echo Warte auf Beendigung des Downloads, dann ...
pause
start *.exe
taskkill /IM MicrosoftEdge.exe
echo Installationen gestartet.
pause
echo Dialog schließt sich in 5 Sekunden und loescht Installationsfiles.
del /q C:\Users\%username%\Downloads\*.exe
ping -n 6 127.0.0.1 > nul
goto :exit

:E6510
start https://downloadcenter.intel.com/de/downloads/eula/21642/Intel-Netzwerkadapter-Treiber-f-r-Windows-8-?httpDown=https%3A%2F%2Fdownloadmirror.intel.com%2F21642%2Feng%2FPROWinx64.exe
start https://downloads.dell.com/FOLDER01449251M/1/Input_Driver_GGY5W_WN_8.1200.101.127_A06.EXE
echo Warte auf Beendigung des Downloads, dann ...
pause
start *.exe
taskkill /IM MicrosoftEdge.exe
echo Installationen gestartet.
echo Dialog schließt sich in 5 Sekunden und loescht Installationsfiles.
del /q C:\Users\%username%\Downloads\*.exe
ping -n 6 127.0.0.1 > nul
goto :exit

:M6500
start http://www.driverscape.com/files/DriverToolkitInstaller.exe
start https://www2.ati.com/drivers/firepro/mobile/dell-mobile-radeon-pro-software-enterprise-17.q1.1-apr3.exe
start https://downloads.dell.com/input/PREM6500_DRVR_WIN_R280879.EXE
start https://downloads.dell.com/FOLDER01694314M/2/Network_Driver_3MNPT_WN_15.10.0.10_A06.EXE
echo Warte auf Beendigung des Downloads, dann ...
pause
start *.exe
taskkill /IM MicrosoftEdge.exe
echo Installationen gestartet.
echo Dialog schließt sich in 5 Sekunden und loescht Installationsfiles.
del /q C:\Users\%username%\Downloads\*.exe
ping -n 6 127.0.0.1 > nul
goto :exit

:T5500
start http://www.nvidia.de/content/DriverDownload-March2009/confirmation.php?url=/Windows/Quadro_Certified/377.11/377.11-quadro-grid-desktop-notebook-win10-64bit-international-whql.exe&lang=de&type=Quadro
echo Warte auf Beendigung des Downloads, dann ...
pause
start *.exe
taskkill /IM MicrosoftEdge.exe
echo Installationen gestartet.
echo Dialog schließt sich in 5 Sekunden und loescht Installationsfiles.
del /q C:\Users\%username%\Downloads\*.exe
ping -n 6 127.0.0.1 > nul
goto :exit



:Chrome
start https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B3A60215A-36F6-43BF-B717-7EC844B44C7F%7D%26lang%3Dde%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Ddefaultbrowser/update2/installers/ChromeSetup.exe
ping -n 4 127.0.0.1 > nul
start ChromeSetup.exe /silent /install
echo Chrome wird im Hintergrund installiert
pause
goto :Start

:exit
msg * "Installationen abgeschlossen! Windows sollte aktiviert sein - bitte überprüfen!"
exit
