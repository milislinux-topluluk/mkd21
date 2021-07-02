#!/bin/sh
ls /mnt/mpsdo21/rw/opt/*.mps.lz | xargs -I {} /usr/milis/bin/pkvt_ekle.sh {}
