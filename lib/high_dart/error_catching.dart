void main(){
  //1.Compile error
  // String x = 10;

  //2.Runtime error : Exception

  var list = <String>[];

  list.add("Ahmet"); //0
  list.add("Zeynep"); //1



  try{
    String isim = list[3];
    print("Gelen isim: $isim");
  }catch(e){
    print("Listenin boyutunu aştınız");
  }

}