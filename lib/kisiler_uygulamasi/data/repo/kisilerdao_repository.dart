import 'package:dart_lessons/kisiler_uygulamasi/data/sqlite/veritabani.dart';

import '../entity/persons.dart';

class KisilerDaoRepo {
  Future<void> save(String name, String phone) async {
    var db = await Veritabani.dbErisim();

    var bilgiler = Map<String,dynamic>();
    bilgiler["kisi_ad"] = name;
    bilgiler["kisi_tel"] = phone;

    await db.insert("kisiler", bilgiler);

  }

  Future<void> update(int p_id, String p_name, String p_tel) async {

    var db = await Veritabani.dbErisim();

    var bilgiler = Map<String,dynamic>();

    bilgiler["kisi_ad"] = p_name;
    bilgiler["kisi_tel"] = p_tel;

    await db.update("kisiler", bilgiler,where: "kisi_id=?",whereArgs: [p_id]);

  }

  Future<List<Persons>> kisileriYukle() async {
    var db = await Veritabani.dbErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT *FROM kisiler");

    return List.generate(maps.length, (i) {
      // 0,1 index numarası
      var satir = maps[i];
      return Persons(
          id: satir["kisi_id"],
          name: satir["kisi_ad"],
          phone: satir["kisi_tel"]);
    });
  }

  Future<List<Persons>> ara(String aranan) async {
    var db = await Veritabani.dbErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT *FROM kisiler Where kisi_ad like '%$aranan%'");

    return List.generate(maps.length, (i) {
      // 0,1 index numarası
      var satir = maps[i];
      return Persons(
          id: satir["kisi_id"],
          name: satir["kisi_ad"],
          phone: satir["kisi_tel"]);
    });


  }

  Future<void> sil(int kisi_id) async {
    var db = await Veritabani.dbErisim();

    await db.delete("kisiler",where: "kisi_id=?",whereArgs: [kisi_id]);

  }
}
