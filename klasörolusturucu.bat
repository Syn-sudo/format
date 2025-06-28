@echo off
echo Klasorler ve dosyalar olusturuluyor...

:: Ana klasör
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim"

:: Alt klasörler
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\Projeler"
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\Notlar"
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\Kodlar"
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\Muzik"
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\Filmler"
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\DersNotlari"
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\Siirler"
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\Yedekler"
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\YazilimAraclari"

:: Günlük klasörü (tarihle)
set TODAY=%DATE:~6,4%-%DATE:~3,2%-%DATE:~0,2%
mkdir "%USERPROFILE%\Desktop\KendiDosyalarim\Gunluk\%TODAY%"

:: Örnek dosyalar
echo Yapilacaklar listesi >> "%USERPROFILE%\Desktop\KendiDosyalarim\Notlar\Yapilacaklar.txt"
echo print("Merhaba Dünya!") > "%USERPROFILE%\Desktop\KendiDosyalarim\Kodlar\ilk_program.py"
echo Bu sayfaya şiirlerini yazabilirsin. >> "%USERPROFILE%\Desktop\KendiDosyalarim\Siirler\ilk_siir.txt"

echo Tum klasorler ve dosyalar olusturuldu.
pause
