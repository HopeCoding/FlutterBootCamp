import 'package:dart_lessons/homeworks/h7/data/repo/yapilacakdao_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class toDoRegistCubit extends Cubit<void>{

  toDoRegistCubit():super(0);

  var tdrepo=toDosRepo();

  Future<void> save(String name) async {
    await tdrepo.save(name);
  }

}