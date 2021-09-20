import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsStringTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: 'JS String',
      topicDescription: '''There are 2 ways to create string in JavaScript

By string literal
By string object (using new keyword)''',
      sampleProgram: '''var s1="javascript ";
var s2="concat example";
var s3=s1.concat(s2);
document.write(s3);''',
      sampleProgramOutput: '''javascript concat example''',
      programDescription: ''),
];
