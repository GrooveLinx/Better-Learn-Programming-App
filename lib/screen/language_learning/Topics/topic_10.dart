import 'package:code_quiz_v2/database/programming_tutorial_data.dart';
import 'package:code_quiz_v2/widgets/custom_topic_app_bar.dart';
import 'package:flutter/material.dart';

import '../language_tile_page.dart';

class Topic10 extends StatelessWidget {
  final int id;
  const Topic10({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutorialKey = programmingTutorial.firstWhere((e) => e.id == id);
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => LanguageTilePage()));
            },
            topicTitle: '${tutorialKey.topic10Title}',
          ),
        ],
      ),
    );
  }
}
