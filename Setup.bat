@echo off
chcp 65001 >nul
title Thorium Portable - Установка

echo Скачивание Thorium...
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {$ProgressPreference = 'SilentlyContinue'; Write-Host '  [' -NoNewline -ForegroundColor Green; Write-Host '█████████░░░░░░░' -NoNewline -ForegroundColor Cyan; Write-Host '] 60%%' -ForegroundColor Green; Invoke-WebRequest -Uri 'https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_AVX2_138.0.7204.303.zip' -OutFile 'thorium_AVX2_138.0.7204.303.zip'; Write-Host '  [' -NoNewline -ForegroundColor Green; Write-Host '████████████████' -NoNewline -ForegroundColor Cyan; Write-Host '] 100%%' -ForegroundColor Green}"

echo Распаковка...
7za.exe x thorium_AVX2_138.0.7204.303.zip -y

echo Переименование BIN в app...
if exist "app" rmdir /s /q app
move BIN app

echo Переименование thorium.exe в chrome.exe...
move app\thorium.exe app\chrome.exe

echo Готово!
pause