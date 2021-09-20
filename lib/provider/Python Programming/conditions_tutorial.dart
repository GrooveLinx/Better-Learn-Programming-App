import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> pythonConditionsTutorial = [
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'Python if else',
      topicDescription:
          '''There comes situations in real life when we need to make some decisions and based on these decisions, we decide what should we do next. Similar situations arises in programming also where we need to make some decisions and based on these decisions we will execute the next block of code.

Decision making statements in programming languages decides the direction of flow of program execution. Decision making statements available in python are:

if statement
if..else statements
nested if statements
if-elif ladder
Short Hand if statement
Short Hand if-else statement
if statement

if statement is the most simple decision making statement. It is used to decide whether a certain statement or block of statements will be executed or not i.e if a certain condition is true then a block of statement is executed otherwise not.

Syntax:



if condition:
   # Statements to execute if
   # condition is true
Here, condition after evaluation will be either true or false. if statement accepts boolean values – if the value is true then it will execute the block of statements below it otherwise not. We can use condition with bracket ‘(‘ ‘)’ also.

As we know, python uses indentation to identify a block. So the block under an if statement will be identified as shown in the below example:

if condition:
   statement1
statement2

# Here if the condition is true, if block 
# will consider only statement1 to be inside 
# its block.

if- else

The if statement alone tells us that if a condition is true it will execute a block of statements and if the condition is false it won’t. But what if we want to do something else if the condition is false. Here comes the else statement. We can use the else statement with if statement to execute a block of code when the condition is false.
Syntax:

if (condition):
    # Executes this block if
    # condition is true
else:
    # Executes this block if
    # condition is false


''',
      sampleProgram: '''# Python program to illustrate if-elif-else ladder
#!/usr/bin/python

i = 20
if (i == 10):
    print ("i is 10")
elif (i == 15):
    print ("i is 15")
elif (i == 20):
    print ("i is 20")
else:
    print ("i is not present")''',
      sampleProgramOutput: '''i is 20''',
      programDescription:
          '''The block of code following the else statement is executed as the condition present in the if statement is false after call the statement which is not in block(without spaces).'''),
];
