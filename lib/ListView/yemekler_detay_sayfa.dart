

import 'package:dart_lessons/ListView/yemekler.dart';
import 'package:flutter/material.dart';

class YemeklerDetaySayfa extends StatefulWidget {
  Yemekler yemek;

  YemeklerDetaySayfa({required this.yemek});

  @override
  State<YemeklerDetaySayfa> createState() => _YemeklerDetaySayfaState();
}

class _YemeklerDetaySayfaState extends State<YemeklerDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    var y = widget.yemek;
    return Scaffold(
      appBar: AppBar(
        title: Text(y.ad),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${y.resimAd}"),
            Text(
              "${y.fiyat} ₺",
              style: const TextStyle(fontSize: 36, color: Colors.blue),
            ),
            ElevatedButton(
                onPressed: () {

                },
                child: const Text(
                  "SİPARİŞ VER",
                  style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
