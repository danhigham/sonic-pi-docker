#!/bin/sh

ln -s /lib/modules/5.17.0-1003-oem /lib/modules/`uname -r`
modprobe snd-seq-dummy

jackd -r -d dummy -r 44100 &
