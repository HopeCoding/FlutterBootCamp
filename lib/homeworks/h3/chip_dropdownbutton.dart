import 'package:flutter/material.dart';

const   List<String> list = <String>["34","36","38"];

class DropdownBtn extends StatefulWidget {



  @override
  State<DropdownBtn> createState() => _DropdownBtnState();
}

class _DropdownBtnState extends State<DropdownBtn> {

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;

    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.add_box_outlined),
      style: const TextStyle(color: Colors.indigoAccent),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (veri){
        setState(() {
          dropdownValue = veri!;
        });
      },
      items: list.map((value) {
        return DropdownMenuItem(child: Text(value),value: value,);
      }).toList(),
        // This is called when the user selects an item.

    );
  }
}

