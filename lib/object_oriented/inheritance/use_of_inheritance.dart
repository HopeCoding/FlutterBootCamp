import 'package:dart_lessons/object_oriented/inheritance/house.dart';
import 'package:dart_lessons/object_oriented/inheritance/palace.dart';
import 'package:dart_lessons/object_oriented/inheritance/villa.dart';

void main(){

  var topkapiPalace=Palace(towerNumber: 10, windowNumber: 300);
  print(topkapiPalace.towerNumber); //Kendi özelliği
  print(topkapiPalace.windowNumber); //Kalıtım ile gelen özellik

  var bogazVilla=Villa(haveGarage: true, windowNumber: 40);
  print(bogazVilla.haveGarage); // Kendi özelliği
  print(bogazVilla.windowNumber); // Kalıtım ile özelliği

  //Type casting
  //Tip kontrolü

  if(topkapiPalace is Palace){
    print("Saraydır");
  }else{
    print("Saray değildir");
  }

  //DownCasting

  var house=House(windowNumber: 5);

  var palace=house as Palace;

  //UpCasting

  var p=Palace(towerNumber: 3, windowNumber: 100);
  House h=p;




}