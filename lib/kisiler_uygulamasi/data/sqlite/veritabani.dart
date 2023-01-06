import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Veritabani {

  // Veritabanı vb diye kısalttık
  static final String vbAdi = "rehber.sqlite";

  static Future<Database> dbErisim() async{
    String vbYolu = join(await getDatabasesPath(),vbAdi);

    if(await databaseExists(vbYolu)){
      print("Veritabanı zaten var.");
    }else{
      ByteData data = await rootBundle.load("veritabanı/rehber.sqlite");
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);
      await File(vbYolu).writeAsBytes(bytes,flush: true);
      print("Veritabanı kopyalandı.");
    }

    return openDatabase(vbYolu);

  }

}