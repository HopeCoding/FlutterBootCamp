import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbToDos {

  // Veritabanı vb diye kısalttık
  static final String dbAdi = "yapilacaklar.sqlite";

  static Future<Database> dbErisim() async{
    String dbYolu = join(await getDatabasesPath(),dbAdi);

    if(await databaseExists(dbYolu)){
      print("Veritabanı zaten var.");
    }else{
      ByteData data = await rootBundle.load("veritabanı/yapilacaklar.sqlite");
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);
      await File(dbYolu).writeAsBytes(bytes,flush: true);
      print("Veritabanı kopyalandı.");
    }

    return openDatabase(dbYolu);

  }

}