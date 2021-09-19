import 'package:code_quiz_v2/provider/C%20Programming/condition_tutorial.dart';
import 'package:code_quiz_v2/provider/JS%20Programming/condition_tutorial.dart';
import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/Java%20Programming/conditions_tutorial.dart';
import 'package:code_quiz_v2/provider/Python%20Programming/conditions_tutorial.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

class Topic4 extends StatelessWidget {
  final int id;
  const Topic4({
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
          topicTitle: '${tutorialKey.topic4} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: cConditionsTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: cConditionsTutorial.length, //will be changed
              itemBuilder: (BuildContext context, int _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cConditionsTutorial[_].topicTitle,
                        topicDescription:
                            cConditionsTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgram(
                          topicProgram: cConditionsTutorial[_].sampleProgram),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cConditionsTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cConditionsTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaConditionsTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaConditionsTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaConditionsTutorial[_].topicTitle,
                            topicDescription:
                                javaConditionsTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram:
                                  javaConditionsTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput: javaConditionsTutorial[_]
                                  .sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaConditionsTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonConditionsTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonConditionsTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle:
                                    pythonConditionsTutorial[_].topicTitle,
                                topicDescription: pythonConditionsTutorial[_]
                                    .topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram: pythonConditionsTutorial[_]
                                      .sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput:
                                      pythonConditionsTutorial[_]
                                          .sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonConditionsTutorial[_]
                                          .programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : jsConditionsTutorial[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: jsConditionsTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle:
                                        jsConditionsTutorial[_].topicTitle,
                                    topicDescription: jsConditionsTutorial[_]
                                        .topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram: jsConditionsTutorial[_]
                                          .sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput:
                                          jsConditionsTutorial[_]
                                              .sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          jsConditionsTutorial[_]
                                              .programDescription)
                                ],
                              ),
                            );
                          },
                        )
                      : null,
    );
  }
}
