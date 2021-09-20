import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsDataTypesTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: 'JS Data-types',
      topicDescription:
          '''A value in JavaScript is always of a certain type. For example, a string or a number.

There are eight basic data types in JavaScript. Here, we’ll cover them in general and in the next chapters we’ll talk about each of them in detail.

We can put any type in a variable. For example, a variable can at one moment be a string and then store a number:''',
      sampleProgram: '''// BigInt value
const value1 = 900719925124740998n;

// Adding two big integers
const result1 = value1 + 1n;
console.log(result1); // "900719925124740999n"

const value2 = 900719925124740998n;

// Error! BitInt and number cannot be added
const result2 = value2 + 1; 
console.log(result2);''',
      sampleProgramOutput: '''900719925124740999n
Uncaught TypeError: Cannot mix BigInt and other types''',
      programDescription:
          '''Note: BigInt was introduced in the newer version of JavaScript and is not supported by many browsers including Safari.'''),
];
