import 'package:dart_lessons/object_oriented/functions.dart';

void main() {
  var f = Fonksiyonlar();

  String fromResult = f.info();
  f.message(fromResult);

  int fromTotal=f.sum(10, 20);
  print("Gelen toplam : $fromTotal");

}
