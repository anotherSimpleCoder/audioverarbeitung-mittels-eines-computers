#!/usr/bin/bash
python3 -m venv fft
cp ./fft.py fft/fft.py 
cd fft
source ./bin/activate
python3 fft.py
gnuplot plot.gp
