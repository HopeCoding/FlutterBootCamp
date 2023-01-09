import 'package:dart_lessons/homeworks/h7/data/repo/yapilacakdao_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class toDoDetailCubit extends Cubit<void>{

  toDoDetailCubit():super(0);

  var tdRepo=toDosRepo();

  Future<void> update(int id,String name)async{
    await tdRepo.update(id,name);
  }
}