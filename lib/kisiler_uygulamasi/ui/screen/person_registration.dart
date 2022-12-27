import 'package:flutter/material.dart';

class PersonRegistPage extends StatefulWidget {
  const PersonRegistPage({Key? key}) : super(key: key);

  @override
  State<PersonRegistPage> createState() => _PersonRegistPageState();
}

class _PersonRegistPageState extends State<PersonRegistPage> {
  @override
  Widget build(BuildContext context) {

    var tfpName = TextEditingController();
    var tfpPhone = TextEditingController();

    Future<void> save(String name,String phone) async {
      print("Kişi Kaydet : $name - $phone");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kişi Kayıt"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 100,right: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                TextField(controller: tfpName,decoration: const InputDecoration(hintText: "Kişi Ad"),),
                TextField(controller: tfpPhone,decoration: const InputDecoration(hintText: "Kişi Tel"),),
                ElevatedButton(onPressed: (){
                    save(tfpPhone.text, tfpPhone.text);
              }, child: const Text("Kaydet")),

            ],
          ),
        ),
      ),
    );
  }
}
