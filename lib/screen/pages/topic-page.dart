import 'package:code_quiz_v2/database/language-list.dart';
import 'package:flutter/material.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'CodeQuiz',
          style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              letterSpacing: 1.2,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w600),
        ),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20, crossAxisSpacing: 20, crossAxisCount: 2),
          itemCount: language.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Text(''),
              ),
            );
          }),
    );
  }
}
