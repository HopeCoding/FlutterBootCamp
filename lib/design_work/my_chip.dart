import 'package:flutter/material.dart';
import 'colors.dart';

class MyChip extends StatelessWidget{

  String icerik;


  MyChip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: txtColor1),),
      style: TextButton.styleFrom(
          backgroundColor: mainColor,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
      ),
    );
  }
}
