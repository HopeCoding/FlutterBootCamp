import 'package:flutter/material.dart';

class PageY extends StatelessWidget {
  const PageY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Future<bool> backPage(BuildContext context) async{
      Navigator.of(context).popUntil((route) => route.isFirst); // İlk sayfaya kadar geri dön.
      return true; // Geri tuşunu iptal ettik.
    }

    return WillPopScope(onWillPop: () => backPage(context),
      child: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text(
            "SAYFA Y",
            style: TextStyle(fontFamily: "Griffon", color: Colors.white),
          ),
          leading: IconButton(onPressed: (){
            Navigator.of(context).popUntil((route) => route.isFirst); // İlk sayfaya kadar geri dön.
          }, icon: const Icon(Icons.arrow_back)),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),

      ),
    );
  }
}
