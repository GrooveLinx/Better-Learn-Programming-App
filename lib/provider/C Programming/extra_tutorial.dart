import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> cExtraTutorial = [
  ProgrammingTutorial(
      id: 1,
      topicTitle: '''C++ Pointer''',
      topicDescription:
          '''The pointer in C++ language is a variable, it is also known as locator or indicator that points to an address of a value.
Advantage of pointer

1) Pointer reduces the code and improves the performance, it is used to retrieving strings, trees etc. and used with arrays, structures and functions.

2) We can return multiple values from function using pointer.

3) It makes you able to access any memory location in the computer's memory.Usage of pointer

There are many usage of pointers in C++ language.

1) Dynamic memory allocation

In c language, we can dynamically allocate memory using malloc() and calloc() functions where pointer is used.

2) Arrays, Functions and Structures

Pointers in c language are widely used in arrays, functions and structures. It reduces the code and improves the performance.
Declaring a pointer : The pointer in C++ language can be declared using ∗ (asterisk symbol).

int ∗   a; //pointer to int
char ∗  c; //pointer to char''',
      sampleProgram:
          '''Let's see the simple example of using pointers printing the address and value.

#include <iostream>
using namespace std;
int main()
{
int number=30;
int ∗   p;
p=&number;//stores the address of number variable
cout<<"Address of number variable is:"<<&number<<endl;
cout<<"Address of p variable is:"<<p<<endl;
cout<<"Value of p variable is:"<<*p<<endl;
   return 0;
}
''',
      sampleProgramOutput: '''Address of number variable is:0x7ffccc8724c4
Address of p variable is:0x7ffccc8724c4
Value of p variable is:30''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle:
          '''Pointer Program to swap 2 numbers without using 3rd variable''',
      topicDescription: '''''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main()
{string food = "Pizza";  // A food variable of type string
string* ptr = &food;    // A pointer variable, with the name ptr, that stores the address of food

// Output the value of food (Pizza)
cout << food << "\\n";

// Output the memory address of food (0x6dfed4)
cout << &food << "\\n";

// Output the memory address of food with the pointer (0x6dfed4)
cout << ptr << "\\n";
   return 0;
}''',
      sampleProgramOutput: '''Pizza
0x6dfed4
0x6dfed4''',
      programDescription: '''Example explained
Create a pointer variable with the name ptr, that points to a string variable, by using the asterisk sign * (string* ptr). Note that the type of the pointer has to match the type of the variable you're working with.

Use the & operator to store the memory address of the variable called food, and assign it to the pointer.

Now, ptr holds the value of food's memory address.'''),
];
