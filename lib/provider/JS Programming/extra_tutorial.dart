import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsExtraTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: 'JavaScript: Get the last element of an array',
      topicDescription:
          '''Write a JavaScript function to get the last element of an array. Passing a parameter 'n' will return the last 'n' elements of the array.

Test Data :
console.log(last([7, 9, 0, -2]));
console.log(last([7, 9, 0, -2],3));
console.log(last([7, 9, 0, -2],6));''',
      sampleProgram: '''var last =  function(array, n) {
  if (array == null) 
    return void 0;
  if (n == null) 
     return array[array.length - 1];
  return array.slice(Math.max(array.length - n, 0));
  };

console.log(last([7, 9, 0, -2]));
console.log(last([7, 9, 0, -2],3));
console.log(last([7, 9, 0, -2],6));''',
      sampleProgramOutput: '''-2
[9,0,-2]
[7,9,0,-2]''',
      programDescription: ''),
];
