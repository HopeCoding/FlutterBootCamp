import 'package:dart_lessons/homeworks/h4/pageY.dart';
import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "SAYFA B",
          style: TextStyle(fontFamily: "Griffon", color: Colors.white),
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
                    context, MaterialPageRoute(builder: (context) => PageY()));
              },
              child: const Text("GİT > Y"),
            ),
          ],
        ),
      ),

    );
  }
}
