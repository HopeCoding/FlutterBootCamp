import 'package:dart_lessons/block_pattern/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class MainPageBlockPattern extends StatelessWidget {


  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Block Kullanımı"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<MainPageCubit,int>(
              builder: (context,s){
                return Text(
                  s.toString(),
                  style: TextStyle(fontSize: 40),
                );
              },
            ),
            TextField(
              controller: tfSayi1,
              decoration: const InputDecoration(hintText: "Sayı 1"),
            ),
            TextField(
              controller: tfSayi2,
              decoration: const InputDecoration(hintText: "Sayı 2"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      String s1 = tfSayi1.text;
                      String s2 = tfSayi2.text;
                      context.read<MainPageCubit>().toplama(s1, s2);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.cyanAccent)),
                    child: const Text("Toplama",
                        style: TextStyle(color: Colors.black))),
                ElevatedButton(
                    onPressed: () {
                      String s1 = tfSayi1.text;
                      String s2 = tfSayi2.text;
                      context.read<MainPageCubit>().carpma(s1, s2);

                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.cyanAccent)),
                    child: const Text(
                      "Çarpma",
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
