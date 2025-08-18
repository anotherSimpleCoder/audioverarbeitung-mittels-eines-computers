#!/usr/bin/bash
sox scherzo.wav -t dat - | tail -n +2 > amplitude.txt
