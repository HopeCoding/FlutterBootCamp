import 'package:flutter/material.dart';


class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
            Text("Counter is Finished: "),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Bir önceki sayfaya geri dönmek demek.
                },
                child: const Text("BACK")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst); // İlk sayfaya kadar geri dön.
                },
                child: const Text("BACK TO MENU")),

          ],
        ),
      ),
    );
  }
}
