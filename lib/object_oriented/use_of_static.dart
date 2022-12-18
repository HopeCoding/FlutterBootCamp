import 'package:dart_lessons/object_oriented/aClass.dart';

void main() {
  var a = AClass();

  // Standart Kullanım
  //print(a.variable);
  //a.method();

  //Sanal nesne - isimsiz nesne
  // print(AClass().variable); //1. sanal nesne
  // AClass().method();  // 2.sanal nesne

  //Static kullanım
  print(AClass.variable);
  AClass.method();



}