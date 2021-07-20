import 'package:code_quiz_v2/provider/C%20Programming/extra_tutorial.dart';
import 'package:code_quiz_v2/provider/Dart%20Programming/extra_tutorial.dart';
import 'package:code_quiz_v2/provider/JS%20Programming/extra_tutorial.dart';
import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/Java%20Programming/extra_tutorial.dart';
import 'package:code_quiz_v2/provider/Python%20Programming/extra_tutorial.dart';
import 'package:code_quiz_v2/provider/Swift%20Programming/extra_tutorial.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

class Topic8 extends StatelessWidget {
  final int id;
  const Topic8({
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
          topicTitle: '${tutorialKey.topic8} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: cExtraTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: cExtraTutorial.length, //will be changed
              itemBuilder: (BuildContext context, int _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cExtraTutorial[_].topicTitle,
                        topicDescription: cExtraTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgram(
                          topicProgram: cExtraTutorial[_].sampleProgram),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cExtraTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cExtraTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaExtraTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaExtraTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaExtraTutorial[_].topicTitle,
                            topicDescription:
                                javaExtraTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram: javaExtraTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput:
                                  javaExtraTutorial[_].sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaExtraTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonExtraTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonExtraTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle: pythonExtraTutorial[_].topicTitle,
                                topicDescription:
                                    pythonExtraTutorial[_].topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram:
                                      pythonExtraTutorial[_].sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput: pythonExtraTutorial[_]
                                      .sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonExtraTutorial[_].programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : dartExtraTutorial[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: dartExtraTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle: dartExtraTutorial[_].topicTitle,
                                    topicDescription:
                                        dartExtraTutorial[_].topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram:
                                          dartExtraTutorial[_].sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput: dartExtraTutorial[_]
                                          .sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          dartExtraTutorial[_]
                                              .programDescription)
                                ],
                              ),
                            );
                          },
                        )
                      : swiftExtraTutorial[0].id == tutorialKey.id
                          ? ListView.builder(
                              itemCount: swiftExtraTutorial.length,
                              itemBuilder: (BuildContext context, _) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Column(
                                    children: [
                                      TopicsIntro(
                                        // topicId: 1 + index,
                                        topicTitle:
                                            swiftExtraTutorial[_].topicTitle,
                                        topicDescription: swiftExtraTutorial[_]
                                            .topicDescription,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgram(
                                          topicProgram: swiftExtraTutorial[_]
                                              .sampleProgram),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgramOutput(
                                          topicProgramOutput:
                                              swiftExtraTutorial[_]
                                                  .sampleProgramOutput),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgramDescription(
                                          topicProgramDescription:
                                              swiftExtraTutorial[_]
                                                  .programDescription)
                                    ],
                                  ),
                                );
                              },
                            )
                          : jsExtraTutorial[0].id == tutorialKey.id
                              ? ListView.builder(
                                  itemCount: jsExtraTutorial.length,
                                  itemBuilder: (BuildContext context, _) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        children: [
                                          TopicsIntro(
                                            // topicId: 1 + index,
                                            topicTitle:
                                                jsExtraTutorial[_].topicTitle,
                                            topicDescription: jsExtraTutorial[_]
                                                .topicDescription,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgram(
                                              topicProgram: jsExtraTutorial[_]
                                                  .sampleProgram),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgramOutput(
                                              topicProgramOutput:
                                                  jsExtraTutorial[_]
                                                      .sampleProgramOutput),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgramDescription(
                                              topicProgramDescription:
                                                  jsExtraTutorial[_]
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
