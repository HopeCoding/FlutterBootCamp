import 'package:dart_lessons/kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonDetailCubit extends Cubit<void>{

  PersonDetailCubit():super(0);

  var krepo=KisilerDaoRepo();

  Future<void> update(int p_id,String p_name,String p_tel)async{
    await krepo.update(p_id, p_name, p_tel);
  }



}