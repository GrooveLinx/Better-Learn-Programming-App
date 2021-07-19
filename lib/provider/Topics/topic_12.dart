import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/database/programming_tutorial.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

class Topic12 extends StatelessWidget {
  final int id;
  const Topic12({
    Key key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutorialKey = categoryTile.firstWhere((e) => e.id == id);
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => LanguageTilePage()));
          },
          topicTitle: '${tutorialKey.topic1} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: ListView.builder(
        itemCount: programmingTutorial.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                TopicsIntro(
                  topicId: 1 + index,
                  topicTitle: programmingTutorial[index].topicTitle,
                  topicDescription: programmingTutorial[index].topicDescription,
                ),
                SizedBox(
                  height: 10,
                ),
                TopicsProgram(
                    topicProgram: programmingTutorial[index].sampleProgram),
                SizedBox(
                  height: 10,
                ),
                TopicsProgramOutput(
                    topicProgramOutput:
                        programmingTutorial[index].sampleProgramOutput),
                SizedBox(
                  height: 10,
                ),
                TopicsProgramDescription(
                    topicProgramDescription:
                        programmingTutorial[index].programDescription)
              ],
            ),
          );
        },
      ),
    );
  }
}
