import 'package:dart_lessons/work_structure/people.dart';
import 'package:dart_lessons/work_structure/result_screen.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  People person;

  GameScreen({required this.person});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int counter = 0;

  Future<bool> backPage(BuildContext context) async{
    print("Navigation tuşu tıklandı");
    return false; // Geri tuşunu iptal ettik.
  }


  @override
  Widget build(BuildContext context) {
    var k = widget.person;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Screen"),
        leading: IconButton(
            onPressed: () {
              print("Geri tuşu çalıştı");
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: WillPopScope(onWillPop: () => backPage(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${k.name}-${k.age}-${k.boy}-${k.bekar} \n\n\n Counter: $counter ",
                style: TextStyle(fontSize: 16),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                  },
                  child: const Text("CLİCK")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  child: const Text("RESET")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResultScreen()));
                    // Navigator.pushReplacement(context,
                    // MaterialPageRoute(builder: (context) => ResultScreen()));
                    // Hangi context içerisindeyse onu kapatır ve diğer contexe gider.
                  },
                  child: const Text("FİNİSH")),
            ],
          ),
        ),
      ),
    );
  }
}
