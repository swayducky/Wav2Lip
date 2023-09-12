#!/usr/bin/env bash

#echo "Make sure you have installed via 'apt install llvm'"
#echo "Where it is: $(which llvm-config)"
#export LLVM_CONFIG="$(which llvm-config)"
python -m venv .venv
source .venv/bin/activate
pip install -r requirements_sway.txt
# pip install https://raw.githubusercontent.com/AwaleSajil/ghc/master/ghc-1.0-py3-none-any.whl
