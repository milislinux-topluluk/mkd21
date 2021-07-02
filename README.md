## Milis 2.1 Kullanıcı Deposu ##
 
* Bu git deposu Milis Linux Kullanıcıları için oluşturulmuş gönüllü topluluk deposudur. Resmi Milis Linux deposu için: [https://mls.akdeniz.edu.tr/git/milislinux/milis21](https://mls.akdeniz.edu.tr/git/milislinux/milis21) adresine gidiniz.
* Amaç Milis kullanıcılarının kendi talimatlarını oluşturup paylaşabilecekleri bir ortam oluşturmaktır.
* Burada paylaşılan talimatlar belli bir kararlılığa ulaştığında resmi Milis Linux projesine gönderilebilecektir.

#### Talimat nedir? Paketleme Nedir? Milis'te paketleme nasıl yapılır? ####

* Bu konudaki tüm sorularınız için bkz:
 https://mls.akdeniz.edu.tr/belgeler/docs/tr/paketleme1.html

#### Yerel Depo Kullanımı ####

* Normal şartlarda derleme işleminden sonra üretilen her paket sisteme tek tek kurulmalıdır. 
* Veya bir paketi derlemek için `mps der paket_adı --kur` komutuyla otomatik kurulmasını sağlayabilirsiniz.
* Ancak üretilen paketi/paketleri kaldırıp yeniden kurmak gerektiğinde yerel depo kullanmak daha mantıklı olacaktır.
* Yerel depo kullanarak paket kurmak ve kaldırmak daha kolay hale gelmektedir. Üstelik bağımlılık zinciri de sağlanmış olmaktadır.

1) Bunun için önce Wayfire Config Manager > Autostart bölümüne `yd_baslat.sh` komutunu ekleyip çalıştırın.
2) Sonra `/usr/milis/mps/conf/conf.lua` dosyasını [dosyalar](https://mls.akdeniz.edu.tr/git/milis-topluluk/mkd21/src/branch/master/dosyalar) klasöründeki _conf.lua_ dosyası ile değiştirin veya içeriğini aynı şekilde kopyalayın.
3) _conf.lua_ dosyasındaki `--[2]="http://localhost:9999"` satırının başındaki -- ifadesini silip dosyayı kaydedin.
4) terminalden `sudo mps gun` komutu verin. Burada yerel depoya ulaşamadığını belirten bir uyarı verecektir önemsemeyin.
5) Paketleri ürettiğiniz `/mnt/mpsdo21/rw/opt` dizininde _paket.vt_ isimli boş bir dosya oluşturun ve aynı dizinde terminal açarak `toplu_pkvt_ekle.sh` komutu verin.
6) Masaüstü oturumunu kapatıp yeniden başlattıktan sonra terminalden `sudo mps gun -P` komutu verdiğinizde yerel deponuzun resmi milis deposu altında *http://localhost:9999* adıyla listelendiğini görmelisiniz.

**Not**: Paketler derleme ortamının `/opt` dizininde üretilmelidir, bu sebeple yerel depo başlatma betikleri `/mnt/mpsdo21/rw/opt` dizini için ayarlanmıştır. Derleme ortamına girdiğinizde mutlaka `cd /opt` komutu vermeyi unutmayın. 
Eğer derleme ortamı kullanılmadan çalışan sistemde paket üretilmişse, yerel deponun düzgün çalışması için `/usr/milis/bin/yd_baslat.sh` ve `toplu_pkvt_ekle.sh` dosyaları paketlerin üretildiği dizine göre düzenlenmelidir.


* Paketleme konusunda takıldığınız yer olursa [https://mls.akdeniz.edu.tr/mm](https://mls.akdeniz.edu.tr/mm) adresinden kayıt olup geliştirici sohbet ortamında sorunlarınız hakkında yardım alabilirsiniz.
* Talimat paylaşımı için katılım isteklerinizi [burada](https://mls.akdeniz.edu.tr/git/milis-topluluk/mkd21/issues) yeni bir konu açarak iletebilirsiniz.
