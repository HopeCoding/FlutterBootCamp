import 'package:dart_lessons/kisiler_uygulamasi/data/entity/persons.dart';
import 'package:dart_lessons/kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPagePersonCubit extends Cubit<List<Persons>>{

  MainPagePersonCubit():super(<Persons>[]);

  var krepo = KisilerDaoRepo();

  Future<void> kisileriYukle() async {

     var liste = await krepo.kisileriYukle();

     emit(liste);

  }

  Future<void> ara(String aranan) async {
    var liste = await krepo.ara(aranan);

    emit(liste);

  }

  Future <void> sil(int kisi_id) async{
    await krepo.sil(kisi_id);

    await kisileriYukle();

  }


}