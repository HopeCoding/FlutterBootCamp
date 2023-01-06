import 'package:dart_lessons/GridView/filmler_sayfa.dart';
import 'package:dart_lessons/ListView/yemekler_sayfa.dart';
import 'package:dart_lessons/block_pattern/main_block_pattern.dart';
import 'package:dart_lessons/block_pattern/main_cubit.dart';
import 'package:dart_lessons/design_work/mainpage.dart';
import 'package:dart_lessons/homeworks/h3/homework3.dart';
import 'package:dart_lessons/homeworks/h4/homework4.dart';
import 'package:dart_lessons/homeworks/h5/calculator.dart';
import 'package:dart_lessons/homeworks/h6/ui/cubit/toDo_detail_cubit.dart';
import 'package:dart_lessons/homeworks/h6/ui/cubit/toDo_mainpage_cubit.dart';
import 'package:dart_lessons/homeworks/h6/ui/cubit/toDo_regist_cubit.dart';
import 'package:dart_lessons/homeworks/h6/ui/screen/toDo_mainpage.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/cubit/mainpage_cubit.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/cubit/person_detail_cubit.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/cubit/person_regist_cubit.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/screen/mainpagePerson.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/screen/person_registration.dart';
import 'package:dart_lessons/page_tabs/bottom_page.dart';
import 'package:dart_lessons/page_tabs/drawer_page.dart';
import 'package:dart_lessons/page_tabs/tabs_sayfa.dart';
import 'package:dart_lessons/widgets/mainpageWidget.dart';
import 'package:dart_lessons/work_structure/mainpagegame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PersonRegistCubit()),
        BlocProvider(create: (context) => PersonDetailCubit()),
        BlocProvider(create: (context) => MainPageCubit()),
        BlocProvider(create: (context) => MainPagePersonCubit()),
        BlocProvider(create: (context) => MainPageToDoCubit()),
        BlocProvider(create: (context) => toDoDetailCubit()),
        BlocProvider(create: (context) => toDoRegistCubit()),

      ],
      child: MaterialApp(
        title: '',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: MainpagetoDo(),
      ),
    );
  }
}


/*
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MainPageCubit()) // blockpattern Main Cubit kısmı.
      ],

 */


