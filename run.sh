#!/usr/bin/env bash

# Ask for inputs
read -p "Module Number: " N
read -p "EDA Number: " M

# Zero-pad values
NN=$(printf "%02d" "$N")
MMM=$(printf "%03d" "$M")

# Create virtual environment (only if it doesn't already exist)
if [ ! -d "pdtvenv" ]; then
  python3 -m venv ./pdtvenv
fi

# Activate virtual environment
source ./pdtvenv/bin/activate

# Set PYTHONPATH
export PYTHONPATH="$PWD:$PWD/test"

# Run the app
python3 ./labbenchstudios/pdt/edge/app/EdgeDeviceApp.py \
  -c "../pdt-exercise-docs/labmodule${NN}/eda${MMM}.props"
