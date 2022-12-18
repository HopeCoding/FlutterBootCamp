import 'package:dart_lessons/object_oriented/inheritance/house.dart';

class Villa extends House{

  bool haveGarage;

  Villa({required this.haveGarage,required int windowNumber}): super(windowNumber: windowNumber);
}