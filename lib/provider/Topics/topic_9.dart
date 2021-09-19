import 'package:code_quiz_v2/provider/C%20Programming/string_tutorial.dart';
import 'package:code_quiz_v2/provider/JS%20Programming/string_tutorial.dart';
import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/Java%20Programming/string_tutorial.dart';
import 'package:code_quiz_v2/provider/Python%20Programming/string_tutorial.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

class Topic9 extends StatelessWidget {
  final int id;
  const Topic9({
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
          topicTitle: '${tutorialKey.topic9} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: cStringTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: cStringTutorial.length, //will be changed
              itemBuilder: (BuildContext context, int _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cStringTutorial[_].topicTitle,
                        topicDescription: cStringTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgram(
                          topicProgram: cStringTutorial[_].sampleProgram),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cStringTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cStringTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaStringTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaStringTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaStringTutorial[_].topicTitle,
                            topicDescription:
                                javaStringTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram:
                                  javaStringTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput:
                                  javaStringTutorial[_].sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaStringTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonStringTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonStringTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle: pythonStringTutorial[_].topicTitle,
                                topicDescription:
                                    pythonStringTutorial[_].topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram:
                                      pythonStringTutorial[_].sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput: pythonStringTutorial[_]
                                      .sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonStringTutorial[_]
                                          .programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : jsStringTutorial[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: jsStringTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle: jsStringTutorial[_].topicTitle,
                                    topicDescription:
                                        jsStringTutorial[_].topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram:
                                          jsStringTutorial[_].sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput: jsStringTutorial[_]
                                          .sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          jsStringTutorial[_]
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
