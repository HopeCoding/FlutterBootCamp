import 'package:dart_lessons/page_tabs/sayfa_bir.dart';
import 'package:dart_lessons/page_tabs/sayfa_iki.dart';
import 'package:flutter/material.dart';

class BottomSayfa extends StatefulWidget {
  const BottomSayfa({Key? key}) : super(key: key);

  @override
  State<BottomSayfa> createState() => _BottomSayfaState();
}

class _BottomSayfaState extends State<BottomSayfa> {

  int secilenIndeks = 0 ;

  var sayfaListesi = [const SayfaBir(),const SayfaIki()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: const Text("Bottom Navigation"),backgroundColor: Colors.deepPurple,),
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "İki"),
        ],
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white30,
        currentIndex: secilenIndeks,
        onTap: (indeks){
          setState(() {
            secilenIndeks = indeks;
          });
          print(indeks.toString());
        },
      ),
    );
  }
}
