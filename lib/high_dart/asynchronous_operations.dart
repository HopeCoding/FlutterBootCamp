//Asenkron İŞLEMLER

void main(){
   printData();
}


Future<String> getdatafromDatabase() async{

  for(var i=1;i<6;i++){
    Future.delayed(Duration(seconds: i),() => print("Alınan veri miktarı :  %${i*20}"));

  }

  return Future.delayed(Duration(seconds: 5),() => "Veritabanı veri kümesi");

}

Future<void> printData() async{
  print("Verilerin alınması bekleniyor....");
  print("Veri alınıyor...");
  var veri = await getdatafromDatabase();

  print("Alınan veri : $veri");
}