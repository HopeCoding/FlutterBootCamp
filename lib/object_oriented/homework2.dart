class Homework2 {

  double interior_angle(int edges) {
    double total = ((edges - 2) * 180) / edges;

    return total;
  } //Kenar sayısı verilen çokgenin iç açıları bulan method.

  int myWage(int day) {
    int wage = 0;
    int wHour = day * 8;

    if (wHour < 150) {
      wage += wHour * 40;
    } else {
      wage += 150 * 40;
      wHour -= 150;
      wage += wHour * 80;
    }

    return wage;
  } //Çalışma gününe göre  maaş hesabı yapan method.

  int parkingFee(int hour) {
    int fee = 0;
    if (hour < 1) {
      fee = 0;
    } else if (hour == 1) {
      fee = 50;
    } else {
      fee += 50;
      hour -= 1;
      fee += hour * 10;
    }

    return fee;
  } // Saatlik otopark ücreti hesaplayan method.

  double fahrenhiet(double centigrade) {
    double heat = (centigrade * 1.8) + 32;

    return heat;
  } // Santigrat'ı fahrenhiete çeviren method.

  void rectange(double a, double b) {
    double circle = (2 * a) + (2 * b);

    print("Dikdörtgenin kenarları $a ve $b ise çevresi= $circle");
  } // Kenarları verilen dikdörtgenin çevresini bulan method.

  int factorial(int n) {
    int sum = 1;
    while (n > 0) {
      sum = sum * n;
      n--;
    }

    return sum;
  } // Verilen sayıyı faktöriyel değerini hesaplayan method.

  void findA(String text) {

    int control=0;
    for (int i = 0; i < text.length; i++) {
      if (text[i]=='a' || text[i]=='A') {
        control++;
      }
    }
    print("$text kelimesinde $control adet a harfi vardır.");
  } // Verilen kelime içinde kaç adet a harfi olduğunu bulan method.


}
