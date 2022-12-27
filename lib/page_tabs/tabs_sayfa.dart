import 'package:dart_lessons/page_tabs/sayfa_bir.dart';
import 'package:dart_lessons/page_tabs/sayfa_iki.dart';
import 'package:flutter/material.dart';

class TabsSayfa extends StatefulWidget {
  const TabsSayfa({Key? key}) : super(key: key);

  @override
  State<TabsSayfa> createState() => _TabsSayfaState();
}

class _TabsSayfaState extends State<TabsSayfa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      
      child: Scaffold(
        appBar: AppBar(title: const Text("Tabs"),
          backgroundColor: Colors.deepPurple,
          bottom: const TabBar(
              tabs:[
                Tab(text: "Bir",icon: Icon(Icons.looks_one_outlined),),
                Tab(text: "İki",icon: Icon(Icons.looks_two_outlined),),
              ],indicatorColor: Colors.red,labelColor: Colors.pinkAccent,),
        ),
        body: const TabBarView(children: [SayfaBir(),SayfaIki()]),
      ),
    );
  }
}
