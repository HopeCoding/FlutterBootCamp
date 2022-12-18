void main() {
  var plakalar = [16, 34, 6];

  var meyveler = <String>[];

  //Veri ekleme
  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("Kivi");
  print(meyveler);

  //Güncelleme
  meyveler[0] = "Mandalina";
  print(meyveler);

  //Insert
  meyveler.insert(1, "Portakal");
  print(meyveler);

  //Veri okuma
    String meyve = meyveler[2];
    print(meyve);

  // For each
  for(var m in meyveler){
    print("Sonuç : $m");
  }

  for(var i=0;i<meyveler.length;i++){
    print("${i}.meyve = ${meyveler[i]}");
  }

  print(meyveler.isEmpty); // meyveler boş mu sorusu: False
  print(meyveler.contains("Portakal")); // Meyveler de portakal var mı : True

  var liste = meyveler.reversed.toList();
  print(liste);

  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(1);
  print(meyveler);

  meyveler.clear();
  print(meyveler);

}