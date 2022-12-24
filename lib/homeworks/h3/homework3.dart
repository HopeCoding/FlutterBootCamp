import 'package:dart_lessons/homeworks/h3/chip_button.dart';
import 'package:dart_lessons/homeworks/h3/chip_dropdownbutton.dart';
import 'package:dart_lessons/homeworks/h3/chip_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Homework3 extends StatefulWidget {
  const Homework3({Key? key}) : super(key: key);

  @override
  State<Homework3> createState() => _Homework3State();
}

class _Homework3State extends State<Homework3> {
  var shoesList = ["34", "36", "38", "40", "42", "44"];

  var colorList = ["Siyah", "Mavi", "Beyaz", "Kırmızı"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ShoesWorld",
          style: TextStyle(fontFamily: "Griffon"),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Row(
                children: [
                  const Spacer(),
                  TxtButton(
                    txt: "Sepet",
                    size: 13,
                    cTxt: Colors.white,
                    bold: FontWeight.bold,
                    cBtn: Colors.green,
                  ),
                  const Spacer(),
                  TxtButton(
                    txt: "İncelemeler",
                    size: 13,
                    cTxt: Colors.black,
                    bold: FontWeight.bold,
                    cBtn: Colors.red,
                  ),
                ],
              ),
            ),
            Image.asset("images/shoes.png"),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("1379.90₺",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough)),
                      Text("1010.90₺",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("SKECHERS",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Text(
                        "Dynamight 2.0- Rayhill Erkek Siyah Spor Ayakkabı",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      children: [
                        TxtChip(
                            txt: "Ayakkabı Numarası Seçiniz:",
                            size: 12,
                            color: Colors.blueGrey,
                            font: FontWeight.normal),
                        DropdownBtn(),
                        TxtChip(
                            txt: "Renkler",
                            size: 12,
                            color: Colors.blueGrey,
                            font: FontWeight.normal),
                        DropdownBtn(),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TxtButton(
                          txt: "Hemen Satın Al",
                          size: 16,
                          cTxt: Colors.white,
                          bold: FontWeight.bold,
                          cBtn: Colors.black),
                      TxtButton(
                          txt: "Sepete Ekle",
                          size: 16,
                          cTxt: Colors.white,
                          bold: FontWeight.bold,
                          cBtn: Colors.green)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
