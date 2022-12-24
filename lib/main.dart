import 'package:dart_lessons/design_work/mainpage.dart';
import 'package:dart_lessons/homeworks/h3/homework3.dart';
import 'package:dart_lessons/homeworks/h4/homework4.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MainPageWidget(),
    );
  }
}





