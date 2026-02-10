#!/usr/bin/env bash

# Activate virtual environment
source ./pdtvenv/bin/activate

# Set PYTHONPATH
export PYTHONPATH="$PWD:$PWD/test"
