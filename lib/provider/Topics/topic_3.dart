import 'package:code_quiz_v2/provider/C%20Programming/data_types_tutorial.dart';
import 'package:code_quiz_v2/provider/JS%20Programming/data_types_tutorial.dart';
import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/Java%20Programming/data_types_tutorial.dart';
import 'package:code_quiz_v2/provider/Python%20Programming/data_types_tutorial.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

class Topic3 extends StatelessWidget {
  final int id;
  const Topic3({
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
          topicTitle: '${tutorialKey.topic3} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: cDataTypesTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: cDataTypesTutorial.length, //will be changed
              itemBuilder: (BuildContext context, int _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cDataTypesTutorial[_].topicTitle,
                        topicDescription:
                            cDataTypesTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgram(
                          topicProgram: cDataTypesTutorial[_].sampleProgram),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cDataTypesTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cDataTypesTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaDataTypesTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaDataTypesTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaDataTypesTutorial[_].topicTitle,
                            topicDescription:
                                javaDataTypesTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram:
                                  javaDataTypesTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput:
                                  javaDataTypesTutorial[_].sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaDataTypesTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonDataTypesTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonDataTypesTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle:
                                    pythonDataTypesTutorial[_].topicTitle,
                                topicDescription:
                                    pythonDataTypesTutorial[_].topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram:
                                      pythonDataTypesTutorial[_].sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput: pythonDataTypesTutorial[_]
                                      .sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonDataTypesTutorial[_]
                                          .programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : jsDataTypesTutorial[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: jsDataTypesTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle:
                                        jsDataTypesTutorial[_].topicTitle,
                                    topicDescription:
                                        jsDataTypesTutorial[_].topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram:
                                          jsDataTypesTutorial[_].sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput: jsDataTypesTutorial[_]
                                          .sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          jsDataTypesTutorial[_]
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
