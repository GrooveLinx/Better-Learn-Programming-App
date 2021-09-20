import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsConditionsTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: '''JS if-else''',
      topicDescription:
          '''There are multiple different types of conditionals in JavaScript including:

“If” statements: where if a condition is true it is used to specify execution for a block of code.
“Else” statements: where if the same condition is false it specifies the execution for a block of code.
“Else if” statements: this specifies a new test if the first condition is false.''',
      sampleProgram: '''if (false) {
      var outcome = "if block";
} else if (true) {
      var outcome = "first else if block";
} else if (true) {
      var outcome = "second else if block";
} else {
      var outcome = "else block";
}''',
      sampleProgramOutput: '''"first else if block"''',
      programDescription:
          '''An else if statement doesn’t need a following else statement to work. If none of the if or else if conditions pass, then JavaScript moves forward and doesn’t run any of the conditional blocks of code.'''),
];
