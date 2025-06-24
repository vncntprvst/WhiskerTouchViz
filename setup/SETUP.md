# WhiskerTouchViz Project Setup with uv

This project uses [uv](https://docs.astral.sh/uv/) for fast and reliable Python package management.

## Prerequisites

Install uv if you haven't already:

### Windows Installation

**Option 1: PowerShell (recommended)**
```powershell
# First, set execution policy to allow script execution
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Then install uv
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"
```

**Option 2: Via pip (if you have Python already)**
```cmd
pip install uv
```

**Option 3: Download manually**
- Download the installer from: https://github.com/astral-sh/uv/releases
- Run the `.exe` installer

### macOS/Linux Installation
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Alternative: Install via pip (any platform)
```bash
pip install uv
```

## Quick Setup

### Windows
```cmd
setup.bat
```

### macOS/Linux
```bash
chmod +x setup/setup.sh
./setup/setup.sh
```

## Manual Setup

1. Create and activate environment:
```bash
uv venv --python 3.10
```

2. Install dependencies:
```bash
uv pip install -r setup/requirements.txt
```

3. Activate environment:
```bash
# Windows
.venv\Scripts\activate

# macOS/Linux
source .venv/bin/activate
```

## Running the Project

### Option 1: Using activated environment
```bash
# Activate first
source .venv/bin/activate  # or .venv\Scripts\activate on Windows

# Then run
jupyter lab
```

### Option 2: Using uv run (recommended)
```bash
# Run Jupyter Lab directly
uv run jupyter lab

# Run Python scripts
uv run python your_script.py

# Run notebooks
uv run jupyter notebook notebooks/WhiskerResponseCurves.ipynb
```

## Why uv?

- **Fast**: Up to 10-100x faster than pip
- **Reliable**: Consistent dependency resolution
- **Simple**: Single tool for environment and package management
- **Compatible**: Works with existing pip requirements.txt files
