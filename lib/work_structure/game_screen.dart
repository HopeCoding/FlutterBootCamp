import 'package:dart_lessons/work_structure/result_screen.dart';
import 'package:flutter/material.dart';


class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);



  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter : $counter",
              style: TextStyle(fontSize: 36),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen()));
                  // Navigator.pushReplacement(context,
                  // MaterialPageRoute(builder: (context) => ResultScreen()));
                  // Hangi context içerisindeyse onu kapatır ve diğer contexe gider.
                },
                child: const Text("FİNİSH")),
          ],
        ),
      ),
    );
  }
}
