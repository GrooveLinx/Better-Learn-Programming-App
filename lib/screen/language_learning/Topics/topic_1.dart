import 'package:code_quiz_v2/database/programming_tutorial_data.dart';
import 'package:flutter/material.dart';

class Topic1 extends StatelessWidget {
  final int id;
  const Topic1({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutorialKey = programmingTutorial.firstWhere((e) => e.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text(tutorialKey.topic1Title),
      ),
    );
  }
}
