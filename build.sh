#!/bin/bash
echo "Building the application..."

# Update package lists
echo "Updating package lists..."
sudo apt update -y

# Install Python and virtual environment tools if not already installed
echo "Installing Python3 and virtual environment tools..."
sudo apt install -y python3 python3-venv python3-pip

# Create a virtual environment
echo "Creating a virtual environment..."
python3 -m venv venv

# Activate the virtual environment
echo "Activating the virtual environment..."
source venv/bin/activate

# Install dependencies from requirements.txt
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Build process completed successfully."

