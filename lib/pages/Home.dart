// ignore: file_names
import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:layout/pages/Listbuilder.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  // Total restotal;
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget myWidget(String text) {
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

  @override
  Widget build(BuildContext context) {
    final display = context.watch<ValueNotifier<int>>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: const Text(
                "Perceived Stress Scale",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 146, 29, 20),
              ),
              constraints: const BoxConstraints.tightForFinite(width: 1500),
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.all(50),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(70, 0, 30, 0),
                child: RichText(
                    text: const TextSpan(
                  text:
                      "  A more precise measure of personal stress can be determined by using a variety of instruments that have been designed to help measure individual stress levels. The first of these is called the ",
                  style:
                      TextStyle(fontSize: 20, color: Colors.black, height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Perceived Stress Scale.',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 146, 29, 20))),
                  ],
                )),
              ),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(70, 30, 30, 0),
                child: Text(
                  "  The Perceived Stress Scale (PSS) is a classic stress assessment instrument. The tool, while originally developed in 1983, remains a popular choice for helping us understand how different situations affect our feelings and our perceived stress. The questions in this scale ask about your feelings and thoughts during the last month. In each case, you will be asked to indicate how often you felt or thought a certain way. Although some of the questions are similar, there are differences between them and you should treat each one as a separate question. The best approach is to answer fairly quickly. That is, don’t try to count up the number of times you felt a particular way; rather indicate the alternative that seems like a reasonable estimate.",
                  style:
                      TextStyle(fontSize: 20, color: Colors.black, height: 1.5),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 146, 29, 20),
              ),
              alignment: Alignment.center,
              constraints: const BoxConstraints.tightForFinite(width: 1500),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(50),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "For each question choose from the following alternatives: ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("0 - never",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("1 - almost never",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("2 - sometimes",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("3 - fairly often",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("4 - very often",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  )
                ],
              ),
            ),

            ChangeNotifierProvider(
                create: (context) => ValueNotifier(0),
                child: Container(height: 700, child: ListViewBuilder())),
            // ----------------------------------------------------1-----------------------------------------------------------------------
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(60, 40, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Figuring Your PSS Score",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 146, 29, 20),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "\u2022 You can determine your PSS score by following these directions:",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text(
                        "\u2022 First, reverse your scores for questions 4, 5, 7, and 8. On these 4 questions, change the scores like this:",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        40,
                        0,
                        0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "0 = 4,  1 = 3,  2 = 2,  3 = 1,  4 = 0.",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        20,
                        0,
                        0,
                      ),
                      child: RichText(
                        text: TextSpan(
                            text:
                                "\u2022 Now add up your scores for each item to get a total. ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: "My total score is  ${display}",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 146, 29, 20),
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text(
                        "\u2022 Individual scores on the PSS can range from 0 to 40 with higher scores indicating higher perceived stress",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        40,
                        0,
                        0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "\u{2192} Scores ranging from 0-13 would be considered low stress."
                          "\n"
                          "\u{2192} Scores ranging from 14-26 would be considered moderate stress."
                          "\n"
                          "\u{2192} Scores ranging from 27-40 would be considered high perceived stress.",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                      child: Text(
                        "      The Perceived Stress Scale is interesting and important because your perception of what is happening in your life is most important. Consider the idea that two "
                        "individuals could have the exact same events and experiences in their lives for the past month. Depending on their perception, total score could put one of those individuals in the low stress category and the total score could put the second person in the high stress category.",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        40,
                        0,
                        0,
                      ),
                      child: RichText(
                        text: const TextSpan(
                            text: "Disclaimer: ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 146, 29, 20),
                                fontStyle: FontStyle.italic),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    "The scores on the following self-assessment do not reflect any particular diagnosis or course of treatment."
                                    "They are meant as a tool to help assess your level of stress. If you have any further concerns about your current well being, you may contact EAP and talk confidentially to one of our specialists.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        500,
                        0,
                        0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "State of New Hampshire\nEmployee Assistance Program",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 146, 29, 20),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
