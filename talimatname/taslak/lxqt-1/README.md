### LXQt masaüstü ortamının Milis Linux üzerinde derlenmesi
1. Öncelikle Milis Kullanıcı Deposunu sisteminize ekleyin.
    - Bunu yapmak için `/usr/milis/mps/conf/conf.lua` dosyasında 3 nolu talimatdepo satırını aşağıdaki gibi değiştirin, yoksa ekleyin:
    - `[3]={["https://mls.akdeniz.edu.tr/git/milis-topluluk/mkd"]="talimatname/test"},` 
    - Dosyanın ilgili bölümü aşağıdaki gibi görünecektir:
    >     talimatdepo={
    > 		-- git repo adres, ilgili düzeye aktarılacak içerik
    > 		-- tname düzeylere göre
    > 		 [1]={["https://mls.akdeniz.edu.tr/git/milislinux/milis19"]="talimatname/1"},
    > 		 [2]={["https://mls.akdeniz.edu.tr/git/milislinux/milis19"]="talimatname/2"},
    > 		 [3]={["https://mls.akdeniz.edu.tr/git/milis-topluluk/mkd"]="talimatname/test"},
2. Uçbirimden git guncellemesi yapın `mps gun`
3. `/opt` veya başka bir boş dizinde uçbirim açın
4. `mps der -d /usr/milis/talimatname/3/masaustu/lxqt/lxqt.liste --kur` komutu verin
5. Bu komuttan sonra derleme işlemi başlayacak ve oluşan paketler kendiliğinden sisteme kurulacaktır.

**Not:** Bu işlemlerin derleme ortamında yapılması daha sağlıklı olacaktır ancak çalışan sistemde yapılması da mümkündür.
 
- Eğer minimal sistem üzerinde LXQt kurulumu yapacaksanız **xorg** ve **lightdm-gtk-greeter** paketlerini de kurmanız gerekecektir
- Gerekli olan tüm xorg paketlerinin kurulumu için `mps kur -d /usr/milis/ayarlar/iso/xorg.pliste` komutunu verebilirsiniz.
