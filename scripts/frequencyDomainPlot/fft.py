import numpy as np 
from scipy.io import wavfile

rate, data = wavfile.read("scherzo.wav")
fft = np.fft.fft(data)
freqs = np.fft.fftfreq(len(fft), 1/rate)

if data.ndim > 1:
  data = data[:,0]
  fft = np.fft.fft(data)
  freqs = np.fft.fftfreq(len(fft), 1 / rate)

idx = np.where(freqs >= 0)

with open("fft_data.dat", "w") as f:
  for fval, amp in zip(freqs[idx], np.abs(fft[idx])):
    f.write(f"{fval}\t{amp}\n")
