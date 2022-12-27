import 'package:dart_lessons/GridView/filmler.dart';
import 'package:flutter/material.dart';

class FilmlerDetaySayfa extends StatefulWidget {
  Filmler film;


  FilmlerDetaySayfa({required this.film});

  @override
  State<FilmlerDetaySayfa> createState() => _FilmlerDetaySayfaState();
}

class _FilmlerDetaySayfaState extends State<FilmlerDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    var f = widget.film;

    return Scaffold(
      appBar: AppBar(
        title: Text(f.ad),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${f.resimAd}"),
            Text(
              "${f.fiyat} ₺",
              style: const TextStyle(fontSize: 36, color: Colors.blue),
            ),
            SizedBox(width: 200,height: 50,
              child: ElevatedButton(
                onPressed: () {
                    print("${f.ad} satın alındı");
                },
                child: const Text(
                  "FİLM SATIN AL",
                  style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
