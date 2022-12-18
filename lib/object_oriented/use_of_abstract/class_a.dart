import 'package:dart_lessons/object_oriented/use_of_abstract/my_interface.dart';

class ClassA implements MyInterface {
  @override
  int variable = 10;

  @override
  void metod1() {
    print("Metod1 çalıştı");
  }

  @override
  String metod2() {

    return "Metod 2 çalıştı";
  }
}
