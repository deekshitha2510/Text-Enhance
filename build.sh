#!/bin/bash
set -e  # Exit immediately if any command fails

# Install Python dependencies
echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt --user

# Install Gramformer with explicit torch dependency
echo "Installing Gramformer..."
pip install torch==1.13.1+cpu --extra-index-url https://download.pytorch.org/whl/cpu
pip install git+https://github.com/PrithivirajDamodaran/Gramformer.git

echo "Build completed successfully"