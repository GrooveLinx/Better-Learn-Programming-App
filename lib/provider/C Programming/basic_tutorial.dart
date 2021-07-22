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
      programDescription: '''Working of C++ "Hello World!" Program
// Your First C++ Program

In C++, any line starting with // is a comment. Comments are intended for the person reading the code to better understand the functionality of the program. It is completely ignored by the C++ compiler.
#include <iostream>

The #include is a preprocessor directive used to include files in our program. The above code is including the contents of the iostream file.

This allows us to use cout in our program to print output on the screen.

For now, just remember that we need to use #include <iostream> to use cout that allows us to print output on the screen.
int main() {...}

A valid C++ program must have the main() function. The curly braces indicate the start and the end of the function.

The execution of code beings from this function.
std::cout << "Hello World!";

std::cout prints the content inside the quotation marks. It must be followed by << followed by the format string. In our example, "Hello World!" is the format string.

Note: ; is used to indicate the end of a statement.
return 0;

The return 0; statement is the "Exit status" of the program. In simple terms, the program ends with this statement.
Things to take away
We use std:cout in order to print output on the screen.
We must include iostream if we want to use std::cout.
The execution of code begins from the main() function. This function is mandatory. This is a valid C++ program that does nothing.'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Print Number Entered by User',
      topicDescription:
          '''In this example, you'll learn to print the number entered by a user using C++ cout statement.''',
      sampleProgram: '''#include <iostream>
using namespace std;

int main() {    
    int number;

    cout << "Enter an integer: ";
    cin >> number;

    cout << "You entered " << number;    
    return 0;
}''',
      sampleProgramOutput: '''Enter an integer: 23
You entered 23''',
      programDescription: '''Let us look at the various parts of the above program −

The C++ language defines several headers, which contain information that is either necessary or useful to your program. For this program, the header <iostream> is needed.

The line using namespace std; tells the compiler to use the std namespace. Namespaces are a relatively recent addition to C++.

The next line '// main() is where program execution begins.' is a single-line comment available in C++. Single-line comments begin with // and stop at the end of the line.

The line int main() is the main function where program execution begins.

The next line cout << "Hello World"; causes the message "Hello World" to be displayed on the screen.

The next line return 0; terminates main( )function and causes it to return the value 0 to the calling process.'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Comments',
      topicDescription: '',
      sampleProgram: '',
      sampleProgramOutput: '',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '',
      topicDescription: '',
      sampleProgram: '',
      sampleProgramOutput: '',
      programDescription: ''),
];
