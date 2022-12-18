import 'package:dart_lessons/collections/products.dart';

void main() {
  var u1 = Products(id: 1, name: "TV", price: 8000);
  var u2 = Products(id: 2, name: "Laptop", price: 25000);
  var u3 = Products(id: 3, name: "Clock", price: 4500);

  var productList = <Products>[];

  productList.add(u1);
  productList.add(u2);
  productList.add(u3);

  for (var p in productList) {
    print("Id : ${p.id} - Ad: ${p.name} - Fiyat: ${p.price} ₺");
  }
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  //Sort - Sıralama
  //Fiyat : Artan
  Comparator<Products> arrangement1 = (x, y) => x.price.compareTo(y.price);
  productList.sort(arrangement1);

  print("-------------Fiyat : Artan-------------");
  for (var p in productList) {
    print("Id : ${p.id} - Ad: ${p.name} - Fiyat: ${p.price} ₺");
  }
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Comparator<Products> arrangement2 = (x, y) => y.price.compareTo(x.price);
  productList.sort(arrangement2);

  print("-------------Fiyat : Azalan-------------");
  for (var p in productList) {
    print("Id : ${p.id} - Ad: ${p.name} - Fiyat: ${p.price} ₺");
  }
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  Comparator<Products> arrangement3 = (x, y) => x.name.compareTo(y.name);
  productList.sort(arrangement3);

  print("-------------Ad : Artan-------------");
  for (var p in productList) {
    print("Id : ${p.id} - Ad: ${p.name} - Fiyat: ${p.price} ₺");
  }

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  Comparator<Products> arrangement4 = (x, y) => y.name.compareTo(x.name);
  productList.sort(arrangement4);

  print("-------------Ad : Azalan-------------");
  for (var p in productList) {
    print("Id : ${p.id} - Ad: ${p.name} - Fiyat: ${p.price} ₺");
  }

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  //Filter - Filtreleme
  //where = if
  Iterable<Products> filtering1 = productList.where((productObject) => productObject.price > 5000 && productObject.price < 10000);

  var liste1 = filtering1.toList();


  print("-------------Filtreleme 10.000-5.000₺  Ürünler-------------");
  for (var p in filtering1) {
    print("Id : ${p.id} - Ad: ${p.name} - Fiyat: ${p.price} ₺");
  }

  // print("-------------Filtreleme 5000₺> Ürünler-------------");
  // for (var p in liste1) {
  //   print("Id : ${p.id} - Ad: ${p.name} - Fiyat: ${p.price} ₺");
  // }

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Iterable<Products> filtering2 = productList.where((productObject) => productObject.name.contains("lock"));

  var liste2 = filtering2.toList();


  print("-------------Filtreleme 2 lock kelimesi olanlar-------------");
  for (var p in liste2) {
    print("Id : ${p.id} - Ad: ${p.name} - Fiyat: ${p.price} ₺");
  }

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



}

