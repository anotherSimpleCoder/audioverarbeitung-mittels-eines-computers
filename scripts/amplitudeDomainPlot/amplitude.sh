#!/usr/bin/bash
if ! command -v gnuplot >/dev/null 2>&1; then
  echo "sox is not installed!"
  echo "Please install sox!"
  return
fi

sox scherzo.wav -t dat - | tail -n +2 > amplitude.txt
gnuplot plot.gp
