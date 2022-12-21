import 'package:flutter/material.dart';

class DropdownBtn extends StatefulWidget {
  List<String> list = <String>[];

  DropdownBtn({required this.list});

  @override
  State<DropdownBtn> createState() => _DropdownBtnState();
}

class _DropdownBtnState extends State<DropdownBtn> {





  @override
  Widget build(BuildContext context) {

    String dropdownValue = widget.list.first;
    for(int i=0;i<widget.list.length;i++){
      print("Liste elemanları:${widget.list.elementAt(i)} ");

    }
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.add_box_outlined),
      elevation: 16,
      style: const TextStyle(color: Colors.indigoAccent),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: widget.list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

