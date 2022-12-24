import 'package:dart_lessons/homeworks/h4/pageB.dart';
import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: const Text(
          "SAYFA A",
          style: TextStyle(fontFamily: "Griffon", color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.purple)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageB()));
              },
              child: const Text("GİT > B"),
            ),
          ],
        ),

      ),


    );
  }
}
