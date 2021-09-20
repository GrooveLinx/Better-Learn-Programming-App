import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> pythonFunctionTutorial = [
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'Python Function',
      topicDescription:
          '''A function is a block of code which only runs when it is called.

You can pass data, known as parameters, into a function.

A function can return data as a result.

Creating a Function
In Python a function is defined using the def keyword:

Example
def my_function():
  print("Hello from a function")
Calling a Function
To call a function, use the function name followed by parenthesis:

Example
def my_function():
  print("Hello from a function")

my_function()
''',
      sampleProgram: '''#!/usr/bin/python

# Function definition is here
def changeme( mylist ):
   "This changes a passed list into this function"
   mylist = [1,2,3,4]; # This would assig new reference in mylist
   print "Values inside the function: ", mylist
   return

# Now you can call changeme function
mylist = [10,20,30];
changeme( mylist );
print "Values outside the function: ", mylist''',
      sampleProgramOutput: '''Values inside the function:  [1, 2, 3, 4]
Values outside the function:  [10, 20, 30]''',
      programDescription:
          '''The parameter mylist is local to the function changeme. Changing mylist within the function does not affect mylist.'''),
];
