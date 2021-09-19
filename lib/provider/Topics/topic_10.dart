import 'package:code_quiz_v2/provider/C%20Programming/oop_tutorial.dart';
import 'package:code_quiz_v2/provider/JS%20Programming/oop_tutorial.dart';
import 'package:code_quiz_v2/database/programming-tile-data.dart';
import 'package:code_quiz_v2/provider/Java%20Programming/oop_tutorial.dart';
import 'package:code_quiz_v2/provider/Python%20Programming/oop_tutorial.dart';
import 'package:code_quiz_v2/screen/language_tile_page.dart';
import 'package:code_quiz_v2/widgets/topics/custom_topic_app_bar.dart';
import 'package:code_quiz_v2/widgets/topics/topics_intro.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_description.dart';
import 'package:code_quiz_v2/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';

class Topic10 extends StatelessWidget {
  final int id;
  const Topic10({
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
          topicTitle: '${tutorialKey.topic10} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: cOOPTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: cOOPTutorial.length, //will be changed
              itemBuilder: (BuildContext context, int _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cOOPTutorial[_].topicTitle,
                        topicDescription: cOOPTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgram(
                          topicProgram: cOOPTutorial[_].sampleProgram),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cOOPTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cOOPTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaOOPTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaOOPTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaOOPTutorial[_].topicTitle,
                            topicDescription:
                                javaOOPTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram: javaOOPTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput:
                                  javaOOPTutorial[_].sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaOOPTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonOOPTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonOOPTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle: pythonOOPTutorial[_].topicTitle,
                                topicDescription:
                                    pythonOOPTutorial[_].topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram:
                                      pythonOOPTutorial[_].sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput:
                                      pythonOOPTutorial[_].sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonOOPTutorial[_].programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : jsOOPTutorial[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: jsOOPTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle: jsOOPTutorial[_].topicTitle,
                                    topicDescription:
                                        jsOOPTutorial[_].topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram:
                                          jsOOPTutorial[_].sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput:
                                          jsOOPTutorial[_].sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          jsOOPTutorial[_].programDescription)
                                ],
                              ),
                            );
                          },
                        )
                      : null,
    );
  }
}
