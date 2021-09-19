import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> cBasicTutorial = [
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Hello World!',
      topicDescription:
          '''A "Hello, World!" is a simple program that outputs Hello, World! on the screen. Since it's a very simple program, it's often used to introduce a new programming language to a newbie.''',
      sampleProgram: '''// Your First C++ Program

#include <iostream>

int main() {
    std::cout << "Hello World!";
    return 0;
}''',
      sampleProgramOutput: '''Hello World!''',
      programDescription:
          '''Let us look at the various parts of the above program −

💠 The C++ language defines several headers, which contain information that is either necessary or useful to your program. For this program, the header <iostream> is needed.

💠 The line using namespace std; tells the compiler to use the std namespace. Namespaces are a relatively recent addition to C++.

💠 The next line '// main() is where program execution begins.' is a single-line comment available in C++. Single-line comments begin with // and stop at the end of the line.

💠 The line int main() is the main function where program execution begins.

💠 The next line cout << "Hello World"; causes the message "Hello World" to be displayed on the screen.

💠 The next line return 0; terminates main( )function and causes it to return the value 0 to the calling process.'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Comments',
      topicDescription:
          '''C++ supports single-line and multi-line comments. All characters available inside any comment are ignored by C++ compiler.

 For example −''',
      sampleProgram: '''#include <iostream>
using namespace std;

int main() {
   cout << "Hello World"; // prints Hello World

   return 0;
}''',
      sampleProgramOutput: 'Hello World',
      programDescription: 'C++ comments start with /* and end with /.'),
];
