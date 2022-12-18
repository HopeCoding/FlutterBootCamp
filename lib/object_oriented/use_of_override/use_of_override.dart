import 'package:dart_lessons/object_oriented/use_of_override/animal.dart';
import 'package:dart_lessons/object_oriented/use_of_override/cat.dart';
import 'package:dart_lessons/object_oriented/use_of_override/dog.dart';
import 'package:dart_lessons/object_oriented/use_of_override/mammal.dart';

void main(){

  var animal=Animal();

  var mammal=Mammal();

  var cat=Cat();

  var dog=Dog();

  animal.makeNoise(); //Kalıtım yok,Kendi metodunu çalıştırdı.
  mammal.makeNoise(); //Kalıtım var,Üst sınıfın metodunu çalıştırdı.
  cat.makeNoise();    //Kalıtım var fakat kendi metodunu çalıştırdı
  dog.makeNoise();    //Kalıtım var fakat kendi metodunu çalıştırdı



}