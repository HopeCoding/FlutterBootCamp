import 'package:dart_lessons/homeworks/h6/data/entity/yapilacaklar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/yapilacakdao_repo.dart';

class MainPageToDoCubit extends Cubit<List<toDos>> {


  MainPageToDoCubit() :super(<toDos>[]);

  var tdrepo = toDosRepo();

  Future<void> refresh() async {

    var liste = await tdrepo.refresh();

    emit(liste);

  }

  Future<void> search(String aranan) async {
    var liste = await tdrepo.search(aranan);

    emit(liste);

  }

  Future <void> delete(int id) async{
    await tdrepo.delete(id);

    await refresh();

  }

}