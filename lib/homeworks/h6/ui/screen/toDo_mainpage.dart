import 'package:dart_lessons/homeworks/h6/data/entity/yapilacaklar.dart';
import 'package:dart_lessons/homeworks/h6/ui/cubit/toDo_mainpage_cubit.dart';
import 'package:dart_lessons/homeworks/h6/ui/screen/toDo_detail.dart';
import 'package:dart_lessons/homeworks/h6/ui/screen/toDo_regist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainpagetoDo extends StatefulWidget {
  const MainpagetoDo({Key? key}) : super(key: key);

  @override
  State<MainpagetoDo> createState() => _MainpagetoDoState();
}

class _MainpagetoDoState extends State<MainpagetoDo> {

  bool searchInActive= false;

  @override
  void initState() {
    super.initState();
    context.read<MainPageToDoCubit>().refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchInActive
            ? TextField(
          decoration:
          const InputDecoration(hintText: "Aramak için yazınız"),
          onChanged: (searchData) {
            context.read<MainPageToDoCubit>().search(searchData);
          },
        )
            : const Text("Yapılacaklar"),
        actions: [
          searchInActive
              ? IconButton(
              onPressed: () {
                setState(() {
                  searchInActive = false;
                  context.read<MainPageToDoCubit>().refresh();
                });
              },
              icon: const Icon(Icons.clear))
              : IconButton(
              onPressed: () {
                setState(() {
                  searchInActive = true;
                });
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      body: BlocBuilder<MainPageToDoCubit, List<toDos>>(
        builder: (context, toDoList) {
          if (toDoList.isNotEmpty) {
            return ListView.builder(
              itemCount: toDoList.length,
              itemBuilder: (context, index) {
                var toDo = toDoList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ToDoDetailPage(
                                toDo: toDo,))).then((value)
                    { context.read<MainPageToDoCubit>().refresh(); });
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${toDo.name}"),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("${toDo.name} silinsin mi ?"),
                                  action: SnackBarAction(
                                    label: "Evet",
                                    onPressed: () {
                                      context
                                          .read<MainPageToDoCubit>()
                                          .delete(toDo.id);
                                    },
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.delete_outline,
                              color: Colors.black54,
                            )),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ToDoRegistPage())).then((value)
          { context.read<MainPageToDoCubit>().refresh(); });
        },
        child: const Icon(Icons.add_sharp),
      ),

    );
  }
}
