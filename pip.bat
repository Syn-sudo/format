@echo off
:: Python yüklü mü kontrol et
python --version >nul 2>&1
if errorlevel 1 (
    echo Python yüklü değil. Lütfen önce Python kur.
    pause
    exit /b
)

:: pip'i güncelle
echo pip guncelleniyor...
python -m pip install --upgrade pip

:: İhtiyaç duyulan tüm pip paketleri
set packages=pip setuptools wheel virtualenv numpy pandas matplotlib scipy seaborn scikit-learn xgboost tensorflow keras lightgbm requests beautifulsoup4 lxml openpyxl xlrd flask django fastapi uvicorn pillow pyinstaller tqdm pydub opencv-python python-dotenv

echo Pip paketleri kuruluyor...
for %%p in (%packages%) do (
    echo %%p kuruluyor...
    python -m pip install %%p
)

echo Tum pip paketleri kuruldu.
pause
