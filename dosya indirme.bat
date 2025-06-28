@echo off
:: Yönetici olarak çalıştırılıp çalıştırılmadığını kontrol et
openfiles >nul 2>&1
if errorlevel 1 (
    echo Lutfen bu dosyayi "Yonetici olarak calistirin"
    pause
    exit /b
)

:: Chocolatey'nin kurulu olup olmadığını kontrol et
choco -v >nul 2>&1
if errorlevel 1 (
    echo Chocolatey yukleniyor...
    powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
    if errorlevel 1 (
        echo Chocolatey yuklenemedi!
        pause
        exit /b
    )
    echo Chocolatey yuklendi.
) else (
    echo Chocolatey zaten yuklu.
)

:: Yüklenmek istenen uygulamalar listesi
set apps=googlechrome discord vscode steam spotify itunes pycharm-community python qbittorrent blender paint.net teamviewer notepadplusplus visualstudio2019community vlc brave notion docker-desktop epicgameslauncher winrar putty eclipse git winscp fl-studio adobereader 7zip firefox

echo Uygulamalar yukleniyor...

for %%a in (%apps%) do (
    echo %%a yukleniyor...
    choco install -y %%a
)

echo Tum uygulamalar yüklendi.
pause
