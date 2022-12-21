import 'package:flutter/material.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  String txtData = "";

  var tfControl = TextEditingController();

  String image = "baklava.png";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Kullanımı"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(txtData),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                controller: tfControl,
                decoration: const InputDecoration(hintText: "Veri giriniz"),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    txtData = tfControl.text;
                  });
                },
                child: const Text("YAP")),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        image="kofte.png";
                      });
                    },
                    child: const Text("Mutlu")),
                SizedBox(width: 48,height: 48,
                    child: Image.network("http://kasimadalan.pe.hu/yemekler/resimler/$image")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        image="ayran.png";
                      });
                    },
                    child: const Text("Mutsuz")),

              ],
            )
          ],
        ),
      ),
    );
  }
}
