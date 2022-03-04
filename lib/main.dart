import "package:flutter/material.dart";
import 'package:layout/pages/Home.dart';
import 'package:layout/pages/Listbuilder.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // ignore: deprecated_member_use
        theme: ThemeData(
            textSelectionTheme:
                TextSelectionThemeData(cursorColor: Colors.black)),
        title: "Stress-Scale",
        home: ChangeNotifierProvider(
          create: (context) => ValueNotifier(0),
          child: HomePage(),
        ));
  }
}
