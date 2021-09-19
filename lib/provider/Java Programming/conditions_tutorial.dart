import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> javaConditionsTutorial = [
  ProgrammingTutorial(
      id: 2,
      topicTitle: '''Java Control Statements | Control Flow in Java''',
      topicDescription:
          '''Java compiler executes the code from top to bottom. The statements in the code are executed according to the order in which they appear. However, Java provides statements that can be used to control the flow of Java code. Such statements are called control flow statements. It is one of the fundamental features of Java, which provides a smooth flow of program.

Java provides three types of control flow statements.

Decision Making statements
if statements
switch statement
Loop statements
do while loop
while loop
for loop
for-each loop
Jump statements
break statement
continue statement
Decision-Making statements:
As the name suggests, decision-making statements decide which statement to execute and when. Decision-making statements evaluate the Boolean expression and control the program flow depending upon the result of the condition provided. There are two types of decision-making statements in Java, i.e., If statement and switch statement.''',
      sampleProgram: '''public class Student {
public static void main(String[] args) {
String address = "Delhi, India";

if(address.endsWith("India")) {
    if(address.contains("Meerut")) {
      System.out.println("Your city is Meerut");
  } else if(address.contains("Noida")) {
        System.out.println("Your city is Noida");
  }else {
    System.out.println(address.split(",")[0]);
  }
 }else {
      System.out.println("You are not living in India");
    }
  }
}''',
      sampleProgramOutput: '''Delhi''',
      programDescription:
          '''The if-else-if statement contains the if-statement followed by multiple else-if statements. In other words, we can say that it is the chain of if-else statements that create a decision tree where the program may enter in the block of code where the condition is true. We can also define an else statement at the end of the chain.'''),
];
