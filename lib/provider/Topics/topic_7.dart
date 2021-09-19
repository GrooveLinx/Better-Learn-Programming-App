import 'package:code_quiz_v2/provider/C%20Programming/array_tutorial.dart';
import 'package:code_quiz_v2/provider/JS%20Programming/array_tutorial.dart';
import 'package:code_quiz_v2/provider/Java%20Programming/array_tutorial.dart';
import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/Python%20Programming/array_tutorial.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

class Topic7 extends StatelessWidget {
  final int id;
  const Topic7({
    Key key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutorialKey = categoryTile.firstWhere((e) => e.id == id);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => LanguageTilePage()));
          },
          topicTitle: '${tutorialKey.topic7} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: cArrayTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: cArrayTutorial.length, //will be changed
              itemBuilder: (BuildContext context, int _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cArrayTutorial[_].topicTitle,
                        topicDescription: cArrayTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgram(
                          topicProgram: cArrayTutorial[_].sampleProgram),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cArrayTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cArrayTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaArrayTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaArrayTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaArrayTutorial[_].topicTitle,
                            topicDescription:
                                javaArrayTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram: javaArrayTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput:
                                  javaArrayTutorial[_].sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaArrayTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonArrayTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonArrayTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle: pythonArrayTutorial[_].topicTitle,
                                topicDescription:
                                    pythonArrayTutorial[_].topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram:
                                      pythonArrayTutorial[_].sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput: pythonArrayTutorial[_]
                                      .sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonArrayTutorial[_].programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : jsArrayTutorial[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: jsArrayTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle: jsArrayTutorial[_].topicTitle,
                                    topicDescription:
                                        jsArrayTutorial[_].topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram:
                                          jsArrayTutorial[_].sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput: jsArrayTutorial[_]
                                          .sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          jsArrayTutorial[_].programDescription)
                                ],
                              ),
                            );
                          },
                        )
                      : null,
    );
  }
}
