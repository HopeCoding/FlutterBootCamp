import 'package:dart_lessons/kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonRegistCubit extends Cubit<void>{

  PersonRegistCubit():super(0);

  var krepo=KisilerDaoRepo();

  Future<void> save(String name,String phone) async {
    await krepo.save(name, phone);
  }



}