import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String text;

  const MyWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 5, 0, 10),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}

class DropdownModel {
  var selectedValue;
  List<String>? dropdownList;
  DropdownModel({this.dropdownList, this.selectedValue});
}

DropdownModel model = DropdownModel(dropdownList: ["1", "2", "3"]);
