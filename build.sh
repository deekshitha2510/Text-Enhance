# Create a proper build.sh file with Unix line endings
@"
#!/bin/bash
set -e  # Exit on error

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Install Gramformer with CPU-only torch
pip install torch==1.13.1+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html
pip install git+https://github.com/PrithivirajDamodaran/Gramformer.git
"@ | Out-File -Encoding ASCII build.sh
