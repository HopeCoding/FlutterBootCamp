import 'package:dart_lessons/homeworks/h4/pageA.dart';
import 'package:dart_lessons/homeworks/h4/pageX.dart';
import 'package:flutter/material.dart';

class Homework4 extends StatefulWidget {
  const Homework4({Key? key}) : super(key: key);

  @override
  State<Homework4> createState() => _Homework4State();
}

class _Homework4State extends State<Homework4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          "ÖDEV 4 ANASAYFA",
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
                    context, MaterialPageRoute(builder: (context) => PageA()));
              },
              child: const Text("GİT > A"),
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.purple)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageX()));
                },
                child: const Text("GİT > X")),
          ],
        ),
      ),
    );
  }
}
