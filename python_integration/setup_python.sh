#!/bin/bash

# Update package lists
sudo apt update

# Install Python and pip
sudo apt install -y python3 python3-pip

# Set Python and pip aliases
echo "alias python=python3" >> ~/.bashrc
echo "alias pip=pip3" >> ~/.bashrc
source ~/.bashrc

# Verify installation
python --version
pip --version

pip install numpy

# Find the location of the Python library
sudo find / -name 'libpython*.so*'
# Set the MOJO_PYTHON_LIBRARY environment variable
export MOJO_PYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.8.so
