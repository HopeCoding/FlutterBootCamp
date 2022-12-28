import 'package:dart_lessons/page_tabs/sayfa_bir.dart';
import 'package:dart_lessons/page_tabs/sayfa_iki.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  int secilenIndeks = 0 ;

  var sayfaListesi =[const SayfaBir(),SayfaIki()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        backgroundColor: Colors.deepPurple,
      ),
      body: sayfaListesi[secilenIndeks],
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                child: const Text("Sayfa Seçiniz",style: TextStyle(color: Colors.white,fontSize: 30),),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,

                ),
            ),

            ListTile(
              title: const Text("Bir"),
              leading: const Icon(Icons.looks_one_outlined),
              onTap: (){
                setState(() {
                  secilenIndeks = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("İki"),
              leading: const Icon(Icons.looks_two_outlined),
              onTap: (){
                setState(() {
                  secilenIndeks = 1;
                });
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }
}
