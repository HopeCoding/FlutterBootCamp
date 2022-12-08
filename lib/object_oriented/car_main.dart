import 'package:dart_lessons/object_oriented/car.dart';

void main() {
  //Nesne oluşturma
  var car1 = Cars(name: 'Bmw',color: "Black",speed:300,isWork: true);
  //Değer atama
  /*
    car1.name="Bmw";
    car1.color="Black";
    car1.isWork=true;
    car1.speed=300;
   */


  //Değer okuma
  car1.printInfo();
  car1.stop();
  car1.printInfo();
  car1.start();
  car1.printInfo();
  car1.speedUp(100);
  car1.printInfo();
  car1.slowDown(25);
  car1.printInfo();


  var car2 = Cars(name: 'Şahin',color: "Red",speed:0,isWork: false);
  /*
      car2.name="Şahin";
      car2.color="Red";
      car2.isWork=false;
      car2.speed=0;
   */

  car2.printInfo();
  car2.start();
  car2.printInfo();
  car2.speedUp(200);
  car2.printInfo();
  car2.slowDown(50);
  car2.printInfo();

  // print("${car2.name} Color: ${car2.color}");
  // print("${car2.name} Speed: ${car2.speed}");
  // print("${car2.name} isWork: ${car2.color}");

}

