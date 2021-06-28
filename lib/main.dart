import 'package:albert_cayuela_web/base_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Raleway',
        textTheme: TextTheme(
            //headline 1 MAIN TITLE
            headline1: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40,
                fontWeight: FontWeight.bold),
            //subtitle 1 MAIN SUBTITLE
            subtitle1: TextStyle(
              fontSize: 20,
            ),
            //normal bodytext
            bodyText1: TextStyle(
              fontSize: 17,
            ),
            //CONTAINER HEADER
            headline2: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
      ),
      home: BaseScreen(),
    );
  }
}
