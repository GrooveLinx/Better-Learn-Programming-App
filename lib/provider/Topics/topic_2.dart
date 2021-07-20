import 'package:code_quiz_v2/provider/C%20Programming/syntax_tutorial.dart';
import 'package:code_quiz_v2/provider/Dart%20Programming/syntax_tutorial.dart';
import 'package:code_quiz_v2/provider/JS%20Programming/syntax_tutorial.dart';
import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/Java%20Programming/syntax_tutorial.dart';
import 'package:code_quiz_v2/provider/Python%20Programming/syntax_tutorial.dart';
import 'package:code_quiz_v2/provider/Swift%20Programming/syntax_tutorial.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

class Topic2 extends StatelessWidget {
  final int id;
  const Topic2({
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
          topicTitle: '${tutorialKey.topic2} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: cSyntaxTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: cSyntaxTutorial.length, //will be changed
              itemBuilder: (BuildContext context, _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cSyntaxTutorial[_].topicTitle,
                        topicDescription: cSyntaxTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgram(
                          topicProgram: cSyntaxTutorial[_].sampleProgram),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cSyntaxTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: 10,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cSyntaxTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaSyntaxTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaSyntaxTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaSyntaxTutorial[_].topicTitle,
                            topicDescription:
                                javaSyntaxTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram:
                                  javaSyntaxTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput:
                                  javaSyntaxTutorial[_].sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaSyntaxTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonSyntaxTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonSyntaxTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle: pythonSyntaxTutorial[_].topicTitle,
                                topicDescription:
                                    pythonSyntaxTutorial[_].topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram:
                                      pythonSyntaxTutorial[_].sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput: pythonSyntaxTutorial[_]
                                      .sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonSyntaxTutorial[_]
                                          .programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : dartSyntaxTutorial[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: dartSyntaxTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle:
                                        dartSyntaxTutorial[_].topicTitle,
                                    topicDescription:
                                        dartSyntaxTutorial[_].topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram:
                                          dartSyntaxTutorial[_].sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput: dartSyntaxTutorial[_]
                                          .sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          dartSyntaxTutorial[_]
                                              .programDescription)
                                ],
                              ),
                            );
                          },
                        )
                      : swiftSyntaxTutorial[0].id == tutorialKey.id
                          ? ListView.builder(
                              itemCount: swiftSyntaxTutorial.length,
                              itemBuilder: (BuildContext context, _) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Column(
                                    children: [
                                      TopicsIntro(
                                        // topicId: 1 + index,
                                        topicTitle:
                                            swiftSyntaxTutorial[_].topicTitle,
                                        topicDescription: swiftSyntaxTutorial[_]
                                            .topicDescription,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgram(
                                          topicProgram: swiftSyntaxTutorial[_]
                                              .sampleProgram),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgramOutput(
                                          topicProgramOutput:
                                              swiftSyntaxTutorial[_]
                                                  .sampleProgramOutput),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TopicsProgramDescription(
                                          topicProgramDescription:
                                              swiftSyntaxTutorial[_]
                                                  .programDescription)
                                    ],
                                  ),
                                );
                              },
                            )
                          : jsSyntaxTutorial[0].id == tutorialKey.id
                              ? ListView.builder(
                                  itemCount: jsSyntaxTutorial.length,
                                  itemBuilder: (BuildContext context, _) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        children: [
                                          TopicsIntro(
                                            // topicId: 1 + index,
                                            topicTitle:
                                                jsSyntaxTutorial[_].topicTitle,
                                            topicDescription:
                                                jsSyntaxTutorial[_]
                                                    .topicDescription,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgram(
                                              topicProgram: jsSyntaxTutorial[_]
                                                  .sampleProgram),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgramOutput(
                                              topicProgramOutput:
                                                  jsSyntaxTutorial[_]
                                                      .sampleProgramOutput),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TopicsProgramDescription(
                                              topicProgramDescription:
                                                  jsSyntaxTutorial[_]
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
