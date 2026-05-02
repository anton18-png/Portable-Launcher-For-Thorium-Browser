@echo off
chcp 65001 >nul
title Thorium Portable

for /f "usebackq tokens=2" %%a in (`whoami /user /nh 2^>nul`) do set "SID=%%a"

if exist "Thorium_HKCU.reg" reg import "Thorium_HKCU.reg" >nul 2>&1
if exist "Thorium.reg" reg import "Thorium.reg" >nul 2>&1

start /wait "" Thorium-PortApps.exe --allow-outdated-plugins --disable-logging --disable-breakpad --disable-encryption --disable-machine-id

reg export "HKU\%SID%\Software\Thorium" "Thorium.reg" /y >nul 2>&1
reg export "HKEY_CURRENT_USER\Software\Thorium" "Thorium_HKCU.reg" /y >nul 2>&1

reg delete "HKU\%SID%\Software\Thorium" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Thorium" /f >nul 2>&1