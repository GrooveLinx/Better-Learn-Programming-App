import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> cDataTypesTutorial = [
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Primitive Built-in Types',
      topicDescription:
          '''C++ offers the programmer a rich assortment of built-in as well as user defined data types. Following table lists down seven basic C++ data types −

Type   Keyword
---------------
Boolean    bool
Character    char
Integer    int
Floating point    float
Double floating point    double
Valueless    void
Wide character    wchar_t''',
      sampleProgram: '''#include <iostream>
using namespace std;

int main() {
   cout << "Size of char : " << sizeof(char) << endl;
   cout << "Size of int : " << sizeof(int) << endl;
   cout << "Size of short int : " << sizeof(short int) << endl;
   cout << "Size of long int : " << sizeof(long int) << endl;
   cout << "Size of float : " << sizeof(float) << endl;
   cout << "Size of double : " << sizeof(double) << endl;
   cout << "Size of wchar_t : " << sizeof(wchar_t) << endl;

   return 0;
}''',
      sampleProgramOutput: '''Size of char : 1
Size of int : 4
Size of short int : 2
Size of long int : 4
Size of float : 4
Size of double : 8
Size of wchar_t : 4''',
      programDescription:
          '''Several of the basic types can be modified using one or more of these type modifiers −

💠 signed
💠 unsigned
💠 short
💠 long

💠 This example uses endl, which inserts a new-line character after every line and << operator is being used to pass multiple values out to the screen. We are also using sizeof() operator to get size of various data types.'''),
];
