import 'package:flutter_bloc/flutter_bloc.dart';

import 'matematik_repository.dart';

class MainPageCubit extends Cubit<int> {

  MainPageCubit() :super(0); // varsayılan değer

  var mrepo = MatematikRepository();



  void toplama(String say1,String say2){
    
    emit(mrepo.topla(say1, say2));

  }

  void carpma(String say1,String say2){

    emit(mrepo.carp(say1, say2));


  }

}
