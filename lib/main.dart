import 'package:code_quiz_v2/screen/home-page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CodeQuiz v2',
      theme: ThemeData(
      fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
