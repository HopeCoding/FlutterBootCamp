import 'package:dart_lessons/homeworks/h6/data/entity/yapilacaklar.dart';
import 'package:dart_lessons/homeworks/h6/data/sqlite/db_toDo.dart';

class toDosRepo {
  Future<void> save(String name) async {
    var db = await DbToDos.dbErisim();

    var bilgiler = Map<String, dynamic>();
    bilgiler["name"] = name;

    await db.insert("toDos", bilgiler);
  }

  Future<void> update(int id,String name) async {

    var db = await DbToDos.dbErisim();

    var bilgiler = Map<String,dynamic>();

    bilgiler["id"] = id;
    bilgiler["name"] = name;

    await db.update("toDos", bilgiler,where: "id=?",whereArgs: [id]);

  }


  Future<List<toDos>> refresh() async {
    var db = await DbToDos.dbErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT *FROM toDos");

    return List.generate(maps.length, (i) {
      // 0,1 index numarası
      var satir = maps[i];
      return toDos(id: satir["id"], name: satir["name"]);
    });
  }

  Future<List<toDos>> search(String aranan) async {
    var db = await DbToDos.dbErisim();

    List<Map<String, dynamic>> maps = await db
        .rawQuery("SELECT *FROM toDos Where name like '%$aranan%'");

    return List.generate(maps.length, (i) {
      // 0,1 index numarası
      var satir = maps[i];
      return toDos(id: satir["id"], name: satir["name"]);

    });
  }

  Future<void> delete(int id) async {
    var db = await DbToDos.dbErisim();

    await db.delete("toDos", where: "id=?", whereArgs: [id]);
  }
}
