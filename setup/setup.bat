@echo off
REM Setup script for WhiskerTouchViz project using uv
REM Run this script to create and activate a uv environment

echo Setting up WhiskerTouchViz environment with uv...

REM Check if uv is installed
uv --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: uv is not installed or not in PATH
    echo Please install uv first: https://docs.astral.sh/uv/getting-started/installation/
    echo You can install it with: pip install uv
    pause
    exit /b 1
)

REM Create virtual environment with uv
echo Creating virtual environment...
uv venv --python 3.10

REM Install dependencies
echo Installing dependencies from requirements.txt...
uv pip install -r requirements.txt

echo.
echo Environment setup complete!
echo.
echo To activate the environment in future sessions, run:
echo   .venv\Scripts\activate
echo.
echo Or use uv to run commands directly:
echo   uv run jupyter lab
echo   uv run python your_script.py
echo.

REM Optionally activate the environment
set /p activate="Would you like to activate the environment now? (y/n): "
if /i "%activate%"=="y" (
    echo Activating environment...
    call .venv\Scripts\activate.bat
    echo Environment activated! You can now run: jupyter lab
)

pause
