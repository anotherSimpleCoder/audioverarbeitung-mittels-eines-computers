set xlabel "Frequenz"
set ylabel "Amplitude"
plot "fft_data.dat" using 1:2 with lines title "Beethoven Symphony No.9 (Frequenzdarstellung)"
