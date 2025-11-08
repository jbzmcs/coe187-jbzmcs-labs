#!/bin/bash
# CORRECTED script for Windows with GPU (cu11)

git clone --recursive https://github.com/ivangilmercano/ai8x-training.git -b workshop --single-branch
git clone --recursive https://github.com/ivangilmercano/ai8x-synthesis.git -b workshop --single-branch

cd ai8x-training

# Use py -3.8 to create the venv with the correct Python version
py -3.8 -m venv venv --prompt ai8x-training

# Activate the venv
source venv/Scripts/activate

# Install base packages
pip install pip wheel setuptools

# Install the specific GPU requirements
pip install -r requirements-win-cu11.txt

deactivate

cd ../ai8x-synthesis

# Use py -3.8 to create the second venv
py -3.8 -m venv venv --prompt ai8x-synthesis

# Activate the second venv (fixing a typo from the manual: source /venv -> source venv)
source venv/Scripts/activate

# Install packages for the second venv
pip install pip wheel setuptools
pip install -r requirements.txt
deactivate