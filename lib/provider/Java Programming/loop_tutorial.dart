import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> javaLoopTutorial = [
  ProgrammingTutorial(
      id: 2,
      topicTitle: 'Loops in Java',
      topicDescription:
          '''The Java for loop is used to iterate a part of the program several times. If the number of iteration is fixed, it is recommended to use for loop.

There are three types of for loops in Java.

Loops in Java
Simple for Loop
For-each or Enhanced for Loop
Labeled for Loop
Java Simple for Loop
A simple for loop is the same as C/C++. We can initialize the variable, check condition and increment/decrement value. It consists of four parts:

Initialization: It is the initial condition which is executed once when the loop starts. Here, we can initialize the variable, or we can use an already initialized variable. It is an optional condition.
Condition: It is the second condition which is executed each time to test the condition of the loop. It continues execution until the condition is false. It must return boolean value either true or false. It is an optional condition.
Increment/Decrement: It increments or decrements the variable value. It is an optional condition.
Statement: The statement of the loop is executed each time until the second condition is false.
Syntax:

for(initialization; condition; increment/decrement){
//statement or code to be executed
}''',
      sampleProgram: '''//Java Program to demonstrate the example of for loop
//which prints table of 1
public class ForExample {
public static void main(String[] args) {
    //Code of Java for loop
    for(int i=1;i<=10;i++) {
        System.out.println(i);
    }
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
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 2,
      topicTitle: 'Java While Loop',
      topicDescription:
          '''The Java while loop is used to iterate a part of the program repeatedly until the specified Boolean condition is true. As soon as the Boolean condition becomes false, the loop automatically stops.

The while loop is considered as a repeating if statement. If the number of iteration is not fixed, it is recommended to use the while loop.

Syntax:

while (condition){
//code to be executed
I ncrement / decrement statement
}
The different parts of do-while loop:

1. Condition: It is an expression which is tested. If the condition is true, the loop body is executed and control goes to update expression. When the condition becomes false, we exit the while loop.

Example:

i <=100

2. Update expression: Every time the loop body is executed, this expression increments or decrements loop variable.

Example:

i++;''',
      sampleProgram: '''public class WhileExample {
public static void main(String[] args) {
    int i=1;
    while(i<=10){
        System.out.println(i);
    i++;
    }
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
      programDescription:
          '''In the below example, we print integer values from 1 to 10. Unlike the for loop, we separately need to initialize and increment the variable used in the condition (here, i). Otherwise, the loop will execute infinitely.'''),
  ProgrammingTutorial(
      id: 2,
      topicTitle: '''Java do-while Loop''',
      topicDescription:
          '''The Java do-while loop is used to iterate a part of the program repeatedly, until the specified condition is true. If the number of iteration is not fixed and you must have to execute the loop at least once, it is recommended to use a do-while loop.

Java do-while loop is called an exit control loop. Therefore, unlike while loop and for loop, the do-while check the condition at the end of loop body. The Java do-while loop is executed at least once because condition is checked after loop body.

Syntax:

do{
//code to be executed / loop body
//update statement
}while (condition);
The different parts of do-while loop:

1. Condition: It is an expression which is tested. If the condition is true, the loop body is executed and control goes to update expression. As soon as the condition becomes false, loop breaks automatically.

Example:

i <=100

2. Update expression: Every time the loop body is executed, the this expression increments or decrements loop variable.

Example:

i++;''',
      sampleProgram: '''public class DoWhileExample {
public static void main(String[] args) {
    int i=1;
    do{
        System.out.println(i);
    i++;
    }while(i<=10);
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
      programDescription:
          '''In the above example, we print integer values from 1 to 10. Unlike the for loop, we separately need to initialize and increment the variable used in the condition (here, i). Otherwise, the loop will execute infinitely.'''),
 
];
