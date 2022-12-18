import 'package:dart_lessons/object_oriented/inheritance/house.dart';

class Palace extends House {

  int towerNumber;


  Palace({required this.towerNumber,required int windowNumber}) : super(windowNumber: windowNumber); //super() = Ev()
}