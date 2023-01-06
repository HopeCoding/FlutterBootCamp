import 'package:dart_lessons/homeworks/h6/data/entity/yapilacaklar.dart';
import 'package:dart_lessons/homeworks/h6/ui/cubit/toDo_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoDetailPage extends StatefulWidget {

  toDos toDo;


  ToDoDetailPage({required this.toDo});

  @override
  State<ToDoDetailPage> createState() => _toDoDetailPageState();
}

class _toDoDetailPageState extends State<ToDoDetailPage> {

  var tf_name = TextEditingController();

  @override
  void initState() {
    super.initState();
    var toDo = widget.toDo;
    tf_name.text = toDo.name;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yapılacaklar Detay"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 100,right: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tf_name,decoration: const InputDecoration(hintText: "Yapılacaklar "),),
              ElevatedButton(onPressed: (){
                context.read<toDoDetailCubit>().update(widget.toDo.id,tf_name.text);
              }, child: const Text("Güncelle")),

            ],
          ),
        ),

      ),


    );
  }
}
