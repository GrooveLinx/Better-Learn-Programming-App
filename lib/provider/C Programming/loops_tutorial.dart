import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> cLoopsTutorial = [
  ProgrammingTutorial(id: 1, topicTitle: 'For Loop', topicDescription: '''
The C++ for loop is used to iterate a part of the program several times. If the number of iteration is fixed, it is recommended to use for loop than while or do-while loops.

The C++ for loop is same as C/C#. We can initialize variable, check condition and increment/decrement value.
''', sampleProgram: '''#include <iostream>
using namespace std;
int main() {
         for(int i=1;i<=10;i++){
            cout<<i <<"\\n";
          }
    }''', sampleProgramOutput: '''1
2
3
4
5
6
7
8
9
10''', programDescription: '''for(initialization; condition; incr/decr){}
//code to be executed'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Nested For Loop',
      topicDescription:
          '''In C++, we can use for loop inside another for loop, it is known as nested for loop. Let's see a simple example of nested for loop in C++.
''',
      sampleProgram: '''
#include <iostream>
using namespace std;

int main () {
        for(int i=1;i<=3;i++){
             for(int j=1;j<=3;j++){
            cout<<i<<" "<<j<<"\\n";
          }
        }
}''',
      sampleProgramOutput: '''1  1
1  2
1  3
2  1
2  2 
2  3
3  1
3  2
3  3''',
      programDescription:
          ''' The inner loop is executed fully when outer loop is executed one time. So if outer loop and inner loop are executed 4 times, inner loop will be executed 4 times for each outer loop i.e. total 16 times.'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Infinite For Loop',
      topicDescription:
          '''If we use double semicolon in for loop, it will be executed infinite times. Let's see a simple example of infinite for loop in C++.
''',
      sampleProgram: '''#include <iostream>
using namespace std;

int main () {
        for ( ; ; )
          {
                  cout<<"Infinitive For Loop";
          }
}''',
      sampleProgramOutput: '''Infinitive For Loop
Infinitive For Loop
Infinitive For Loop
Infinitive For Loop
Infinitive For Loop''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'While Loop',
      topicDescription:
          '''In C++, while loop is used to iterate a part of the program several times. If the number of iteration is not fixed, it is recommended to use while loop than for loop.

C++ While Loop Example
Let's see a simple example of while loop to print table of 1.''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main() {
 int i=1;
         while(i<=10)
       {
            cout<<i <<"\\n";
            i++;
          }
    }''',
      sampleProgramOutput: '''1
2
3
4
5
6
7
8
9
10''',
      programDescription: '''
while(condition){
//code to be executed
}'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Nested While Loop',
      topicDescription:
          '''In C++, we can use while loop inside another while loop, it is known as nested while loop. The nested while loop is executed fully when outer loop is executed once.

Let's see a simple example of nested while loop in C++ programming language.''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main () {
        int i=1;
          while(i<=3)
          {
              int j = 1;
              while (j <= 3)
{
            cout<<i<<" "<<j<<"\\n";
            j++;
          }
           i++;
        }
    }''',
      sampleProgramOutput: '''1 1
1 2
1 3
2 1
2 2 
2 3
3 1
3 2
3 3
''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Do-While Loop',
      topicDescription:
          '''The C++ do-while loop is used to iterate a part of the program several times. If the number of iteration is not fixed and you must have to execute the loop at least once, it is recommended to use do-while loop.

The C++ do-while loop is executed at least once because condition is checked after loop body.
Let's see a simple example of nested do-while loop in C++.
''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main() {
     int i = 1;
          do{
              cout<<i<<"\\n";
              i++;
          } while (i <= 10) ;
}''',
      sampleProgramOutput: '''1 1
1 2
1 3
2 1
2 2 
2 3
3 1
3 2
3 3''',
      programDescription: '''do{
//code to be executed
}while(condition);'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Break Statement',
      topicDescription:
          '''Let's see a simple example of C++ break statement which is used inside the loop.
''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main() {
      for (int i = 1; i <= 10; i++)
          {
              if (i == 5)
              {
                  break;
              }
        cout<<i<<"\\n";
          }
}''',
      sampleProgramOutput: '''1
2
3
4''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Continue Statement',
      topicDescription:
          '''The C++ continue statement is used to continue loop. It continues the current flow of the program and skips the remaining code at specified condition. In case of inner loop, it continues only inner loop.

jump-statement;
continue;''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main()
{
     for(int i=1;i<=10;i++){
            if(i==5){
                continue;
            }
            cout<<i<<"\\n";
        }
}''',
      sampleProgramOutput: '''1
2
3
4
6
7
8
9
10''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Goto Statement',
      topicDescription:
          '''The C++ goto statement is also known as jump statement. It is used to transfer control to the other part of the program. It unconditionally jumps to the specified label.

It can be used to transfer control from deeply nested loop or switch case label.
C++ Goto Statement Example
Let's see the simple example of goto statement in C++.''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main()
{
ineligible:
         cout<<"You are not eligible to vote!\\n";
      cout<<"Enter your age:\\n";
      int age;
      cin>>age;
      if (age < 18){
              goto ineligible;
      }
      else
      {
              cout<<"You are eligible to vote!";
      }
}''',
      sampleProgramOutput: '''You are not eligible to vote!
Enter your age:
16
You are not eligible to vote!
Enter your age:
7
You are not eligible to vote!
Enter your age:
22
You are eligible to vote!''',
      programDescription: ''),
];
