import 'package:dart_lessons/GridView/filmler_sayfa.dart';
import 'package:dart_lessons/ListView/yemekler_sayfa.dart';
import 'package:dart_lessons/design_work/mainpage.dart';
import 'package:dart_lessons/homeworks/h3/homework3.dart';
import 'package:dart_lessons/homeworks/h4/homework4.dart';
import 'package:dart_lessons/homeworks/h5/calculator.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/screen/mainpagePerson.dart';
import 'package:dart_lessons/page_tabs/bottom_page.dart';
import 'package:dart_lessons/page_tabs/drawer_page.dart';
import 'package:dart_lessons/page_tabs/tabs_sayfa.dart';
import 'package:dart_lessons/widgets/mainpageWidget.dart';
import 'package:dart_lessons/work_structure/mainpagegame.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const DrawerPage()
    );
  }
}





