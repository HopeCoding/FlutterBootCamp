import 'package:dart_lessons/homeworks/h7/ui/cubit/toDo_regist_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoRegistPage extends StatefulWidget {
  const ToDoRegistPage({Key? key}) : super(key: key);

  @override
  State<ToDoRegistPage> createState() => _ToDoRegistPageState();
}

class _ToDoRegistPageState extends State<ToDoRegistPage> {

  var tf_id = TextEditingController();
  var tf_name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yapılacak Kayıt"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 100,right: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tf_name,decoration: const InputDecoration(hintText: "Yapılacaklar"),),
              ElevatedButton(onPressed: (){
                context.read<toDoRegistCubit>().save(tf_name.text);
              }, child: const Text("Kaydet")),

            ],
          ),
        ),
      ),

    );
  }
}
