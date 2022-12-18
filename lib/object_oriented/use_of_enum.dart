import 'package:dart_lessons/object_oriented/canned_size.dart';

void main(){
  ucretHesapla(30,CannedSize.middle);

}

void ucretHesapla(int adet,CannedSize boyut){
  switch(boyut){
    case CannedSize.small: print("Ücret : ${adet * 14.5} ₺");
    break;
    case CannedSize.middle: print("Ücret : ${adet * 27.5} ₺");
    break;
    case CannedSize.large: print("Ücret : ${adet * 53.5} ₺");
    break;
    

  }

}