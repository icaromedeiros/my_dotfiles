#!/usr/bin/env bash

type pip >/dev/null 2>&1 ||
    { echo >&2 "pip is required. Run 'make packages' to install it via brew."; exit 1; }

echo "Installing Python global packages..."

# Pip-related
pip install --upgrade setuptools
pip install --upgrade pip

while read requirement; do
    pip install $requirement;
done < global_requirements.txt

echo "Done."
