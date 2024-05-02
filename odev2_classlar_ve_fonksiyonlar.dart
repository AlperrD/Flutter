class Fonksiyonlar {
  double icAciHesapla(int kenarSayisi) {
    double aci; //açıyı tutan değişken
    aci = ((kenarSayisi - 2) * 180) / kenarSayisi;
    return aci;
  }

  int maasHesapla(int gun) {
    int gunlukCalismaSaati = 8;
    int saatlikUcret = 40;
    int mesaiSaatlikucret = 80;
    int maxCalisma = 150; //150 saat ve üstü mesai sayılır.
    int maas;
    int calisilanSaat = gun * gunlukCalismaSaati;

    if (gun * gunlukCalismaSaati <= 150) {
      maas = calisilanSaat * saatlikUcret;
      return maas;
    } else {
      int mesaiUcret = (calisilanSaat - maxCalisma) * mesaiSaatlikucret;
      maas = mesaiUcret + (maxCalisma * 40);
      return maas;
    }
  }

  int otoparkUcretHesapla(int dk) {
    int saat = 60; //bir saat 60dk
    int saatlikUcret = 50;
    int saatSonrasi = 10;
    int hesaplananUcret;

    int gecirilenSaat = dk ~/ saat;
    int gecirilenDakika =
        dk % saat; //60' a bölümünden kalan ile dakika değerini bulduk.

    if (gecirilenSaat >= 1 && gecirilenDakika >= 30) {
      gecirilenSaat += 1;

      hesaplananUcret = (gecirilenSaat - 1) * saatSonrasi + saatlikUcret;
    } else if (gecirilenDakika >= 30 && gecirilenSaat < 1) {
      gecirilenSaat += 1;
      hesaplananUcret = gecirilenSaat * saatlikUcret;
    } else if (gecirilenDakika < 30 && gecirilenSaat < 1) {
      hesaplananUcret = 0;
    } else {
      hesaplananUcret = (gecirilenSaat - 1) * saatSonrasi + saatlikUcret;
    }
    return hesaplananUcret;
  }

  double kmToMil(int km) {
    double olcu = 0.621;
    double mil;

    mil = km * olcu;
    return mil;
  }

  void alanHesapla(int kisaKenar, int uzunKenar) {
    int alan;
    alan = kisaKenar * uzunKenar;
    print('Kısa kenar $kisaKenar | Uzun kenar $uzunKenar  Alan: $alan ');
  }

  int faktoriyelHesapla(int sayi) {
    int deger = 1;

    for (int i = 1; sayi >= i; i++) {
      deger *= i;
    }
    return deger;
  }

  int kelimeSayisiBulma(String kelime, String AranacakKelime) {
    int deger = 0;
    for (int i = 0; i < kelime.length; i++) {
      if (kelime[i] == AranacakKelime) {
        deger += 1;
      }
    }
    return deger;
  }
}

void main() {
  var acihesapla = Fonksiyonlar();
  double hesaplananAci = acihesapla.icAciHesapla(3);
  print('Her bir açı: $hesaplananAci\'dir.');

  var ucret = Fonksiyonlar();
  int maas = ucret.maasHesapla(10);
  print('Bu ayki maaşınız $maas TL\'dir.');

  var otoparkUcretHesapla = Fonksiyonlar();
  int deger = otoparkUcretHesapla.otoparkUcretHesapla(380);
  print('Toplam otopark ücretiniz: $deger TL\'dir.');

  var milHesapla = Fonksiyonlar();
  double hesaplananMil = milHesapla.kmToMil(50);
  print('Hesaplanan Mil: $hesaplananMil');

  var alanHesapla = Fonksiyonlar();
  alanHesapla.alanHesapla(50, 50);

  var faktoriyelHesapla = Fonksiyonlar();

  int faktoriyelDegeri = faktoriyelHesapla.faktoriyelHesapla(10);
  print('Girdiğiniz sayinin faktöriyeli: $faktoriyelDegeri\'dir.');

  var kelimeSayisiHesaplama = Fonksiyonlar();
  int kelimeSayisi =
      kelimeSayisiHesaplama.kelimeSayisiBulma('Alpeeeeeeeeeeer', 'e');
  print('Girdiğiniz değerlere göre harf sayısı: $kelimeSayisi tanedir.');
}
