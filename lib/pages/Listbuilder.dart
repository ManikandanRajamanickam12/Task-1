// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";
import 'package:layout/pages/Home.dart';
import 'package:provider/provider.dart';

int display = 0;

class ListViewBuilder extends StatefulWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  final List<String> entries = <String>[
    '1. In the last month, how often have you been upset because of something that happened unexpectedly?',
    '2. In the last month, how often have you felt that you were unable to control the important things in your life?',
    '3. In the last month, how often have you felt nervous and stressed?',
    '4. In the last month, how often have you felt confident about your ability to handle your personal problems?',
    '5. In the last month, how often have you felt that things were going your way?',
    '6. In the last month, how often have you found that you could not cope with all the things that you had to do?',
    '7. In the last month, how often have you been able to control irritations in your life?',
    '8. In the last month, how often have you felt that you were on top of things?',
    '9. In the last month, how often have you been angered because of things that happened that were outside of your control?',
    '10. In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?'
  ];

  List<int> points = [0, 1, 2, 3, 4];
  int state = 0;
  int result = 0;
  Map<int, int> values = {};

  List<int> reverse = [4, 5, 7, 8];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(150, 20, 0, 0),
                      child: DropdownButton<int>(
                        style: const TextStyle(fontSize: 18),
                        items: points.map((int dropdownlist) {
                          return DropdownMenuItem<int>(
                            value: dropdownlist,
                            child: Text('${dropdownlist}'),
                          );
                        }).toList(),
                        onChanged: (int? newValue) {
                          values[index] = newValue!;

                          setState(() {
                            state = newValue;
                          });
                          if (values.length == entries.length) {
                            int sum = 0;
                            for (var find in values.entries) {
                              if (reverse.contains(find.key + 1)) {
                                sum += 4 - find.value;
                              } else {
                                sum += find.value;
                              }
                            }
                            result = sum;
                            context.read<ValueNotifier<int>>().value = result;

                            // final total = Total(result);
                            // RaisedButton(
                            //   child: const Text("Get Score"),
                            //   onPressed: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => HomePage(
                            //                 restotal: total,
                            //               )),
                            //     );
                            //   },
                            // );
                          }
                        },
                        value: values[index],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 15, 0, 0),
                      child: Text(
                        entries[index],
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}

// class Total {
//   final int add;

//   Total(this.add);
// }
