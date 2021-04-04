#!/bin/sh
ls /mnt/mpsdo/rw/opt/*.mps.lz | xargs -I {} /usr/milis/bin/pkvt_ekle.sh {}
