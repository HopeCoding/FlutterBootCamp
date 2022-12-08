import 'package:dart_lessons/object_oriented/homework2.dart';


void main(){

    // 1.Question
    var sumofAngles=Homework2();
    print("İç açılar toplamı: ${sumofAngles.interior_angle(5)}");

    //2.Question
    var wageTotal=Homework2();
    print("Aylık Maaşım: ${wageTotal.myWage(30)}");

    //3.Question
    var timeFee=Homework2();
    print("Park Ücreti: ${timeFee.parkingFee(5)}");

    // Page Two
    // 1.Question

    var temperature=Homework2();
    double celcius=56;
    print("$celcius santigrat = ${temperature.fahrenhiet(celcius)} fahrenayt");

    //2.Question
    var perimeter=Homework2();
    perimeter.rectange(7.5,10);

    //3.Question
    var factorNumber=Homework2();
    int number=5;
    print("$number sayısının faktöriyeli : ${factorNumber.factorial(5)}");

     //4.Question
     var letterA=Homework2();
     letterA.findA("Araba");

}