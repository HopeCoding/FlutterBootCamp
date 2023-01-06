import 'package:dart_lessons/block_pattern/main_cubit.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/cubit/mainpage_cubit.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/screen/person_detail.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/screen/person_registration.dart';
import 'package:flutter/material.dart';
import 'package:dart_lessons/kisiler_uygulamasi/data/entity/persons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainpagePerson extends StatefulWidget {
  const MainpagePerson({Key? key}) : super(key: key);

  @override
  State<MainpagePerson> createState() => _MainpagePersonState();
}

class _MainpagePersonState extends State<MainpagePerson> {
  bool searchInActive = false;

  @override
  void initState() {
    super.initState();
    context.read<MainPagePersonCubit>().kisileriYukle();
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
                  context.read<MainPagePersonCubit>().ara(searchData);
                },
              )
            : const Text("Kişiler"),
        actions: [
          searchInActive
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      searchInActive = false;
                      context.read<MainPagePersonCubit>().kisileriYukle();
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
      body: BlocBuilder<MainPagePersonCubit, List<Persons>>(
        builder: (context, personList) {
          if (personList.isNotEmpty) {
            return ListView.builder(
              itemCount: personList.length,
              itemBuilder: (context, index) {
                var person = personList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonDetailPage(
                                person: person))).then((value)
                        { context.read<MainPagePersonCubit>().kisileriYukle(); });
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${person.name} - ${person.phone}"),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("${person.name} silinsin mi ?"),
                                  action: SnackBarAction(
                                    label: "Evet",
                                    onPressed: () {
                                      context
                                          .read<MainPagePersonCubit>()
                                          .sil(person.id);
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
                  builder: (context) => PersonRegistPage())).then((value)
          { context.read<MainPagePersonCubit>().kisileriYukle(); });
        },
        child: const Icon(Icons.add_sharp),
      ),
    );
  }
}
