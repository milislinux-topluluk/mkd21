patch -p1 -i ../freeimage-libraw-0.20.patch
sh gensrclist.sh
  sh genfipsrclist.sh
  make -f Makefile.gnu
  make -f Makefile.fip
