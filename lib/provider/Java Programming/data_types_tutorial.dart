import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> javaDataTypesTutorial = [
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
      programDescription: '''This program asks the user to enter a number.

When the user enters an integer, it is stored in variable number using cin.

Then it is displayed on the screen using cout.

Starting from this example, we will be using the std namespace using the code:

using namespace std;
This will allow us to write cout, cin, endl, etc. instead of std::cout, std::cin, std::endl respectively.'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '',
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
