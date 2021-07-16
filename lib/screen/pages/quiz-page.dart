import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Take a Quiz',
          style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              letterSpacing: 1.1,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
