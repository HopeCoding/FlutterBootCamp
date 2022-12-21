import 'package:dart_lessons/work_structure/people.dart';
import 'package:flutter/material.dart';
import 'game_screen.dart';

class MainpageGame extends StatefulWidget {
  const MainpageGame({Key? key}) : super(key: key);

  @override
  State<MainpageGame> createState() => _MainpageGameState();
}

class _MainpageGameState extends State<MainpageGame>
    with WidgetsBindingObserver {
  int counter = 0;

  bool control = false;

  @override
  void initState() {
    print("init state çalıştı");
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      print("inactive çalıştı.");
    }
    if (state == AppLifecycleState.paused) {
      print("paused çalıştı.");
    }
    if (state == AppLifecycleState.resumed) {
      print("resumed çalıştı.");
    }
    if (state == AppLifecycleState.detached) {
      print("detached çalıştı.");
    }
  }

  Future<int> toplama(int s1, int s2) async {
    int total = s1 + s2;
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MainPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  var p = People(name: "Umut", age: 25, boy: 170, bekar: true);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GameScreen(
                                person: p,
                              )));
                },
                child: const Text("START")),
            Visibility(
              visible: control,
              child: const Text("TRUE"),
            ),
            Text(
              control ? "TRUE" : "FALSE",
              style: TextStyle(color: control ? Colors.blue : Colors.red),
            ),
            (() {
              if (control) {
                return const Text(
                  "TRUE",
                  style: TextStyle(color: Colors.blue),
                );
              } else {
                return const Text(
                  "FALSE",
                  style: TextStyle(color: Colors.red),
                );
              }
            }()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    control = true;
                  });
                },
                child: const Text("DURUM 1 (TRUE)")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    control = false;
                  });
                },
                child: const Text("DURUM 2 (FALSE)")),
            FutureBuilder<int>(
                future: toplama(10, 20),
                builder: (context,snaphot){
                  if(snaphot.hasError){
                    return const Text("Hata oluştu");
                  }
                  if(snaphot.hasData){
                    return Text("Sonuç : ${snaphot.data}");
                  }else{
                    return const Text("Sonuç yok ");
                  }

                },
            ),
            
          ],
        ),
      ),
    );
  }
}
