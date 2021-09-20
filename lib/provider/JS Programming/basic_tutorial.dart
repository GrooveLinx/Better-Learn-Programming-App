import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsBasicTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: 'Hello World',
      topicDescription:
          '''In this example, you will learn to print 'Hello World' in JavaScript in three different ways.

A "Hello, World!" is a simple program that prints Hello, World! on the screen. Since it's a very simple program, this program is often used to introduce a new programming language to beginners.''',
      sampleProgram: '''// the hello world program
console.log('Hello World');''',
      sampleProgramOutput: '''Hello, World!''',
      programDescription: '''Here, the first line is a comment.

// the hello world program
The second line

console.log('Hello, World!');
prints the 'Hello, World!' string to the console.'''),
];
