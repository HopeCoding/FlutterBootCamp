import 'package:flutter/material.dart';

class TxtButton extends StatelessWidget {


  String txt;

  Color cBtn;

  Color cTxt;

  double size;

  var bold;


  TxtButton({required this.txt,required this.size,required this.cTxt,required this.bold,required this.cBtn});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){}, child:Text(txt,style: TextStyle(fontSize: size,fontWeight: bold,color: cTxt)),
      style: TextButton.styleFrom(
          backgroundColor: cBtn,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
      ),


    );

  }
}
