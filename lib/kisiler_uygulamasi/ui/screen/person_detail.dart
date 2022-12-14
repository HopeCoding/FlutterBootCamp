import 'package:dart_lessons/kisiler_uygulamasi/data/entity/persons.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/cubit/person_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonDetailPage extends StatefulWidget {

  Persons person;


  PersonDetailPage({required this.person});

  @override
  State<PersonDetailPage> createState() => _PersonDetailPageState();
}

class _PersonDetailPageState extends State<PersonDetailPage> {
  var tfPersonName = TextEditingController();

  var tfPersonPhone = TextEditingController();

  @override
  void initState() {
    super.initState();
    var person = widget.person;
    tfPersonName.text = person.name ;
    tfPersonPhone.text = person.phone;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kişi Detay"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 100,right: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfPersonName,decoration: const InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfPersonPhone,decoration: const InputDecoration(hintText: "Kişi Tel"),),
              ElevatedButton(onPressed: (){
                context.read<PersonDetailCubit>().update(widget.person.id,tfPersonName.text,tfPersonPhone.text);
              }, child: const Text("Güncelle")),

            ],
          ),
        ),

      ),
    );
  }
}
