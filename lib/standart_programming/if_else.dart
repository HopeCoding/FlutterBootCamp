void main() {
  int yas = 19;
  String isim = "Ahmet";

  if (yas >= 18) {
    print("Reşitsiniz.");
  } else {
    print("Reşit değilsiniz.");
  }

  if (isim == "Ahmet") {
    print("Merhaba Ahmet");
  } else if (isim == "Mehmet") {
    print("Merhaba Mehmet");
  } else {
    print("Tanınmayan kişi.");
  }

  String ka = "admin";
  int s = 12345;
  if (ka == "admin" && s == 12345) {
    print("Hoşgeldiniz");
  } else {
    print("Hatalı giriş");
  }

  int sayi = 8;

  if (sayi == 9 || sayi == 10) {
    print("Sayı 9 veya 10 dur");
  } else {
    print("Sayı 9 veya 10 değildir");
  }
}
