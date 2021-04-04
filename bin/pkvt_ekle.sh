#!/bin/sh
if [ -z $1 ];then
  echo "paket yolu eksik"
  exit 1
fi

paket=$1

if [ ! -f $paket ];then
  echo "paket bulunamadı"
  exit 1
fi

if [ ! -f ${paket}.bilgi ];then
  echo "paket bilgisi bulunamadı"
  exit 1
fi

if [ ! -f paket.vt ];then
  echo "paket.vt bulunamadı"
  exit 1
fi

# paket ve bilgisini kopyala
cp -fv ${paket} .
cp -fv ${paket}.bilgi .

# eski paket.vt kaydını sil
cp -f paket.vt paket.vt.old
bpaket=`basename ${paket}`
sed -i "/^$(echo ${bpaket} | cut -d'#' -f1) / d" paket.vt

# yeni paket bilgi kaydını ekle
cat ${paket}.bilgi >> paket.vt

# paketi ydk e aktar
mv -v ${paket}*  /mnt/mpsdo/rw/opt/ydk/
mv -v $(dirname ${paket})/*.yur  /mnt/mpsdo/rw/opt/ydk/
mv -v $(dirname ${paket})/*.pktlibler  /mnt/mpsdo/rw/opt/ydk/
mv -v $(dirname ${paket})/*.libgerekler  /mnt/mpsdo/rw/opt/ydk/
# uzak paketdepo yukleme-senkronize etme
#rsync -avh --delete  -e ssh  . 192.168.1.10:/opt/milis-site/paketler/
