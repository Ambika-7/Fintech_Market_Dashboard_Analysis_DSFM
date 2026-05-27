@echo off
echo ==================================================
echo   Starting Fintech Market Dashboard Dashboard
echo ==================================================

:: Check for python
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed or not in your system PATH!
    echo Please install Python 3.9 to 3.13 and check "Add Python to PATH" during installation.
    pause
    exit /b
)

:: Check for node
node --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js is not installed or not in your system PATH!
    echo Please install Node.js version 20+.
    pause
    exit /b
)

echo.
echo [1/4] Installing Python backend dependencies...
cd backend
python -m pip install -r requirements.txt statsmodels scikit-learn arch textblob python-dotenv pmdarima --only-binary=:all:
if errorlevel 1 (
    echo [WARNING] Some dependencies failed to install, trying to install anyway...
)
cd ..

echo.
echo [2/4] Installing frontend npm dependencies...
call npm install
if errorlevel 1 (
    echo [ERROR] npm install failed!
    pause
    exit /b
)

echo.
echo [3/4] Starting Flask Backend in a new window...
start cmd /k "echo Starting Flask Backend... & cd backend & python app.py"

echo.
echo [4/4] Starting Frontend Dev Server...
echo Launching http://localhost:5173 in your default browser...
start "" "http://localhost:5173"
call npm run dev

pause
