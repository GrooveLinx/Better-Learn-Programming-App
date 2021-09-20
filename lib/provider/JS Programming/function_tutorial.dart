import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsFunctionTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: 'JS Function',
      topicDescription:
          '''JavaScript provides functions similar to most of the scripting and programming languages.

In JavaScript, a function allows you to define a block of code, give it a name and then execute it as many times as you want.

A JavaScript function can be defined using function keyword.

Syntax:
//defining a function
function <function-name>()
{
    // code to be executed
};

//calling a function
<function-name>();''',
      sampleProgram: '''function ShowMessage(firstName, lastName) {
    alert("Hello " + firstName + " " + lastName);
}

ShowMessage("Steve", "Jobs");''',
      sampleProgramOutput: 'Hello Steve Jobs',
      programDescription: ''),
];
