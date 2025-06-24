#!/bin/bash
# Setup script for WhiskerTouchViz project using uv
# Run this script to create and activate a uv environment

echo "Setting up WhiskerTouchViz environment with uv..."

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "Error: uv is not installed or not in PATH"
    echo "Please install uv first: https://docs.astral.sh/uv/getting-started/installation/"
    echo "You can install it with: pip install uv"
    exit 1
fi

# Create virtual environment with uv
echo "Creating virtual environment..."
uv venv --python 3.10

# Install dependencies
echo "Installing dependencies from requirements.txt..."
uv pip install -r setup/requirements.txt

echo ""
echo "Environment setup complete!"
echo ""
echo "To activate the environment in future sessions, run:"
echo "  source .venv/bin/activate"
echo ""
echo "Or use uv to run commands directly:"
echo "  uv run jupyter lab"
echo "  uv run python your_script.py"
echo ""

# Optionally activate the environment
read -p "Would you like to activate the environment now? (y/n): " activate
if [[ $activate == "y" || $activate == "Y" ]]; then
    echo "Activating environment..."
    source .venv/bin/activate
    echo "Environment activated! You can now run: jupyter lab"
fi
