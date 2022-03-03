import 'package:flutter/material.dart';

class ListItems extends StatefulWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  _ListItemsState createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  var dropdown = "Points";
  var items = [
    '0',
    '1',
    '2',
    '3',
    '4',
  ];
  final List<DataTiles> datatileslist = [DataTiles(text: "")];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            children: [
              Container(
                  width: 150,
                  padding: EdgeInsets.fromLTRB(60, 10, 0, 10),
                  child: Column(
                    children: [
                      DropdownButton(
                        // Initial Value
                        value: dropdown,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdown = newValue!;
                          });
                        },
                      ),
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 5, 0, 10),
                child: Text(
                  "",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class DataTiles {
  final String? text;

  DataTiles({this.text});
}
