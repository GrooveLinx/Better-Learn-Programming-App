import 'package:code_quiz_v2/provider/Dart%20Programming/basic_tutorial.dart';
import 'package:code_quiz_v2/provider/JS%20Programming/basic_tutorial.dart';
import 'package:code_quiz_v2/provider/Java%20Programming/basic_tutorial.dart';
import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/C%20Programming/basic_tutorial.dart';
import 'package:code_quiz_v2/provider/Python%20Programming/basic_tutorial.dart';
import 'package:code_quiz_v2/provider/Swift%20Programming/basic_tutorial.dart';
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
      body: cBasicTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: 4, //will be changed
              itemBuilder: (BuildContext context, int _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cBasicTutorial[_].topicTitle,
                        topicDescription:
                            cBasicTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgram(
                          topicProgram: cBasicTutorial[_].sampleProgram),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cBasicTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cBasicTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaBasicTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaBasicTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaBasicTutorial[_].topicTitle,
                            topicDescription:
                                javaBasicTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram: javaBasicTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput:
                                  javaBasicTutorial[_].sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaBasicTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonBasicTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonBasicTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle: pythonBasicTutorial[_].topicTitle,
                                topicDescription:
                                    pythonBasicTutorial[_].topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram:
                                      pythonBasicTutorial[_].sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput: pythonBasicTutorial[_]
                                      .sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonBasicTutorial[_].programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : dartBasicTutorial[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: dartBasicTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle: dartBasicTutorial[_].topicTitle,
                                    topicDescription:
                                        dartBasicTutorial[_].topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram:
                                          dartBasicTutorial[_].sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput: dartBasicTutorial[_]
                                          .sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          dartBasicTutorial[_]
                                              .programDescription)
                                ],
                              ),
                            );
                          },
                        )
                      : swiftBasicTutorial[0].id == tutorialKey.id
                          ? ListView.builder(
                              itemCount: swiftBasicTutorial.length,
                              itemBuilder: (BuildContext context, _) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Column(
                                    children: [
                                      TopicsIntro(
                                        // topicId: 1 + index,
                                        topicTitle:
                                            swiftBasicTutorial[_].topicTitle,
                                        topicDescription: swiftBasicTutorial[_]
                                            .topicDescription,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgram(
                                          topicProgram: swiftBasicTutorial[_]
                                              .sampleProgram),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgramOutput(
                                          topicProgramOutput:
                                              swiftBasicTutorial[_]
                                                  .sampleProgramOutput),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgramDescription(
                                          topicProgramDescription:
                                              swiftBasicTutorial[_]
                                                  .programDescription)
                                    ],
                                  ),
                                );
                              },
                            )
                          : jsBasicTutorial[0].id == tutorialKey.id
                              ? ListView.builder(
                                  itemCount: jsBasicTutorial.length,
                                  itemBuilder: (BuildContext context, _) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        children: [
                                          TopicsIntro(
                                            // topicId: 1 + index,
                                            topicTitle:
                                                jsBasicTutorial[_].topicTitle,
                                            topicDescription: jsBasicTutorial[_]
                                                .topicDescription,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgram(
                                              topicProgram: jsBasicTutorial[_]
                                                  .sampleProgram),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgramOutput(
                                              topicProgramOutput:
                                                  jsBasicTutorial[_]
                                                      .sampleProgramOutput),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgramDescription(
                                              topicProgramDescription:
                                                  jsBasicTutorial[_]
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
