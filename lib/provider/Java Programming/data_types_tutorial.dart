import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> javaDataTypesTutorial = [
  ProgrammingTutorial(
      id: 2,
      topicTitle: '''Data Types in Java''',
      topicDescription:
          '''Data types specify the different sizes and values that can be stored in the variable. There are two types of data types in Java:

Primitive data types: The primitive data types include boolean, char, byte, short, int, long, float and double.
Non-primitive data types: The non-primitive data types include Classes, Interfaces, and Arrays.
Java Primitive Data Types
In Java language, primitive data types are the building blocks of data manipulation. These are the most basic data types available in Java language.

Java is a statically-typed programming language. It means, all variables must be declared before its use. That is why we need to declare variable's type and name.

There are 8 types of primitive data types:

boolean data type
byte data type
char data type
short data type
int data type
long data type
float data type
double data type''',
      sampleProgram: '''int myNum = 100000;
System.out.println(myNum);''',
      sampleProgramOutput: '''100000''',
      programDescription: '''int myNum = 5;   // Integer (whole number)
float myFloatNum = 5.99f;    // Floating point number
char myLetter = 'D';         // Character
boolean myBool = true;       // Boolean
String myText = "Hello";     // String'''),
];
