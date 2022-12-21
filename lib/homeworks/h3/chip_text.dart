import 'package:flutter/material.dart';

class TxtChip extends StatelessWidget {
  String txt;

  double size;

  Color color;

  var font;

  TxtChip(
      {required this.txt,
      required this.size,
      required this.color,
      required this.font});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Text(
            txt,
            style: TextStyle(
                fontSize: size, color: color, fontWeight: font),
          ),
        ],
      ),
    );
  }
}
