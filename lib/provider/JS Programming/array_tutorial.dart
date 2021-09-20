import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsArrayTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: 'JavaScript Array',
      topicDescription:
          '''JavaScript array is an object that represents a collection of similar type of elements.

There are 3 ways to construct array in JavaScript

By array literal
By creating instance of Array directly (using new keyword)
By using an Array constructor (using new keyword)''',
      sampleProgram: '''var i;
var emp = new Array();
emp[0] = "Arun";
emp[1] = "Varun";
emp[2] = "John";

for (i=0;i<emp.length;i++){
console.log(emp[i]);
}


let seas = ['Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea'];
seas.push('Red Sea');

console.log(seas);''',
      sampleProgramOutput: '''Arun
Varun
John


[ 'Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea', 'Red Sea' ]''',
      programDescription: ''),
];
