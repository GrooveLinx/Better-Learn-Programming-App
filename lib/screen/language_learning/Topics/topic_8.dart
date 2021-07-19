import 'package:code_quiz_v2/database/programming_tutorial_data.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

import '../language_tile_page.dart';

class Topic8 extends StatelessWidget {
  final int id;
  const Topic8({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutorialKey = programmingTutorial.firstWhere((e) => e.id == id);
    return  Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => LanguageTilePage()));
          },
          topicTitle: '${tutorialKey.topic8Title}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopicsIntro(
                  topicTitle: tutorialKey.topic8Title,
                  topicDescription: tutorialKey.topic8Description,
                ),
                SizedBox(
                  height: 15,
                ),
                TopicsProgram(
                  topicProgram: tutorialKey.sample8Program,
                ),
                SizedBox(
                  height: 15,
                ),
                TopicsProgramOutput(
                  topicProgramOutput: tutorialKey.sample8ProgramOutput,
                ),
                SizedBox(
                  height: 15,
                ),
                TopicsProgramDescription(
                  topicProgramDescription: tutorialKey.program8Description,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
