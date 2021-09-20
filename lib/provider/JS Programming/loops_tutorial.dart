import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsLoopTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: 'JS Loops',
      topicDescription:
          '''The JavaScript loops are used to iterate the piece of code using for, while, do while or for-in loops. It makes the code compact. It is mostly used in array.

There are four types of loops in JavaScript.

for loop
while loop
do-while loop
for-in loop''',
      sampleProgram: '''for (let i = 0; i < cars.length; i++) {
  text += cars[i] + "<br>";
}''',
      sampleProgramOutput: '''
BMW
Volvo
Saab
''',
      programDescription: '''for (statement 1; statement 2; statement 3) {
  // code block to be executed
}'''),
];
