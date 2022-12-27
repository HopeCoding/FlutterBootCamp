import 'package:dart_lessons/kisiler_uygulamasi/ui/screen/person_detail.dart';
import 'package:dart_lessons/kisiler_uygulamasi/ui/screen/person_registration.dart';
import 'package:flutter/material.dart';
import 'package:dart_lessons/kisiler_uygulamasi/data/entity/persons.dart';

class MainpagePerson extends StatefulWidget {
  const MainpagePerson({Key? key}) : super(key: key);

  @override
  State<MainpagePerson> createState() => _MainpagePersonState();
}

class _MainpagePersonState extends State<MainpagePerson> {
  bool searchInActive = false;

  Future<List<Persons>> showAllPeople() async {
    var personList = <Persons>[];
    var p1 = Persons(id: 1, name: "Durmus", phone: "3131");
    var p2 = Persons(id: 2, name: "Ece", phone: "2222");
    var p3 = Persons(id: 3, name: "Elif", phone: "4135");
    personList.add(p1);
    personList.add(p2);
    personList.add(p3);

    return personList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchInActive
            ? TextField(
                decoration:
                    const InputDecoration(hintText: "Aramak için yazınız"),
                onChanged: (searchData) {},
              )
            : const Text("Kişiler"),
        actions: [
          searchInActive
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      searchInActive = false;
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
      body: FutureBuilder<List<Persons>>(
        future: showAllPeople(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var personList = snapshot.data;
            return ListView.builder(
              itemCount: personList!.length,
              itemBuilder: (context, index) {
                var person = personList[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PersonDetailPage(person: person)));
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
                                      onPressed: (){
                                        print("Kişi sil : ${person.id}");
                                      },
                                    ),
                                ),
                              );
                            }, icon: Icon(Icons.delete_outline,color: Colors.black54,)),
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
        onPressed: () {},
        child: const Icon(Icons.add_sharp),
      ),
    );
  }
}
