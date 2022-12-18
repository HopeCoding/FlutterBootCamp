import 'package:flutter/material.dart';

import 'colors.dart';



class Bolum extends StatelessWidget {
  String txt1;
  String txt2;
  String txt3;


  Bolum({required this.txt1,required this.txt2,required this.txt3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          Text(txt1,style: TextStyle(fontSize: 22,color: txtColor2,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 20,top: 10),
            child: Text(txt2,style: TextStyle(fontSize: 22,color: txtColor3,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Text(txt3,style: TextStyle(fontSize: 22,color: txtColor2,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          ),

        ],
      ),
    );
  }
}

