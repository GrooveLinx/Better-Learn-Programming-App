import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> pythonLoopTutorial = [
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'while Loop',
      topicDescription:
          '''Python programming language provides following types of loops to handle looping requirements. Python provides three ways for executing the loops. While all the ways provide similar basic functionality, they differ in their syntax and condition checking time.

While Loop: 
In python, while loop is used to execute a block of statements repeatedly until a given a condition is satisfied. And when the condition becomes false, the line immediately after the loop in program is executed. 
Syntax :

while expression:
    statement(s)
        3. All the statements indented by the same number of character spaces after a programming construct are considered to be             part of a single block of code. Python uses indentation as its method of grouping statements. 
            Example:''',
      sampleProgram: '''# Python program to illustrate
# while loop
count = 0
while (count < 3):
    count = count + 1
    print("Hello Geek")''',
      sampleProgramOutput: '''Hello Geek
Hello Geek
Hello Geek''',
      programDescription: '''This is how while loop works!'''),
  ProgrammingTutorial(
      id: 3,
      topicTitle: '''for Loop''',
      topicDescription:
          '''A for loop is used for iterating over a sequence (that is either a list, a tuple, a dictionary, a set, or a string).

This is less like the for keyword in other programming languages, and works more like an iterator method as found in other object-orientated programming languages.

With the for loop we can execute a set of statements, once for each item in a list, tuple, set etc.''',
      sampleProgram: '''fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)''',
      sampleProgramOutput: '''apple
banana
cherry''',
      programDescription:
          '''The for loop does not require an indexing variable to set beforehand.'''),
];
