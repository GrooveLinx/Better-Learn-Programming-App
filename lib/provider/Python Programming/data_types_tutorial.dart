import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> pythonDataTypesTutorial = [
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'Python Data Types',
      topicDescription:
          '''Data types are the classification or categorization of data items. It represents the kind of value that tells what operations can be performed on a particular data. Since everything is an object in Python programming, data types are actually classes and variables are instance (object) of these classes.

Following are the standard or built-in data type of Python:

Numeric
Sequence Type
Boolean
Set
Dictionary''',
      sampleProgram: '''# Python program to 
# demonstrate numeric value

a = 5
print("Type of a: ", type(a))

b = 5.0
print("\nType of b: ", type(b))

c = 2 + 4j
print("\nType of c: ", type(c))''',
      sampleProgramOutput: '''Type of a:  <class 'int'>

Type of b:  <class 'float'>

Type of c:  <class 'complex'>''',
      programDescription: '''This is how datatypes works!'''),
];
