import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> cConditionsTutorial = [
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'if Condition',
      topicDescription:
          '''In C++ programming, if statement is used to test the condition. There are various types of if statements in C++.

if statement
if-else statement
nested if statement
if-else-if ladder

The C++ if statement tests the condition. It is executed if condition is true.

''',
      sampleProgram: '''#include <iostream>
using namespace std;

int main () {
   int num = 10;
            if (num % 2 == 0)
            {
                cout<<"It is even number";
            }
   return 0;
}''',
      sampleProgramOutput: 'It is even number',
      programDescription: '''if(condition){
//code to be executed
}'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'if-else Condition',
      topicDescription:
          '''The C++ if-else statement also tests the condition. It executes if block if condition is true otherwise else block is executed.
''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main () {
   int num = 11;
            if (num % 2 == 0)
            {
                cout<<"It is even number";
            }
            else
            {
                cout<<"It is odd number";
            }
   return 0;
}''',
      sampleProgramOutput: '''It is odd number''',
      programDescription: '''if(condition){
//code if condition is true
}else{
//code if condition is false
}'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Switch',
      topicDescription: '''C++ switch
The C++ switch statement executes one statement from multiple conditions. It is like if-else-if ladder statement in C++.''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main () {
       int num;
       cout<<"Enter a number to check grade:";
       cin>>num;
           switch (num)
          {
              case 10: cout<<"It is 10"; break;
              case 20: cout<<"It is 20"; break;
              case 30: cout<<"It is 30"; break;
              default: cout<<"Not 10, 20 or 30"; break;
          }
    }''',
      sampleProgramOutput: '''Enter a number:
10
It is 10''',
      programDescription: '''
switch(expression){
case value1:
 //code to be executed;
 break;
case value2:
 //code to be executed;
 break;
......

default:
 //code to be executed if all cases are not matched;
 break;
}'''),
];
