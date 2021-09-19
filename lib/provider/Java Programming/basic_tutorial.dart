import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> javaBasicTutorial = [
  ProgrammingTutorial(
      id: 2,
      topicTitle: 'Hello world!',
      topicDescription:
          '''In this section, we will learn how to write the simple program of Java. We can write a simple hello Java program easily after installing the JDK.

To create a simple Java program, you need to create a class that contains the main method. Let's understand the requirement first.''',
      sampleProgram: '''class Hello{
    public static void main(String args[]){
     System.out.println("Hello World");
    }
}''',
      sampleProgramOutput: 'Hello World',
      programDescription:
          '''Let's see what is the meaning of class, public, static, void, main, String[], System.out.println().

class keyword is used to declare a class in Java.
public keyword is an access modifier that represents visibility. It means it is visible to all.
static is a keyword. If we declare any method as static, it is known as the static method. The core advantage of the static method is that there is no need to create an object to invoke the static method. The main() method is executed by the JVM, so it doesn't require creating an object to invoke the main() method. So, it saves memory.
void is the return type of the method. It means it doesn't return any value.
main represents the starting point of the program.
String[] args or String args[] is used for command line argument. We will discuss it in coming section.
System.out.println() is used to print statement. Here, System is a class, out is an object of the PrintStream class, println() is a method of the PrintStream class. We will discuss the internal working of System.out.println() statement in the coming section.'''),
  ProgrammingTutorial(
      id: 2,
      topicTitle: 'Java comments',
      topicDescription:
          '''Comments can be used to explain Java code, and to make it more readable. It can also be used to prevent execution when testing alternative code.

Single-line Comments
Single-line comments start with two forward slashes (//).

Any text between // and the end of the line is ignored by Java (will not be executed).

This example uses a single-line comment before a line of code:''',
      sampleProgram: '''// This is a comment
System.out.println("Hello World");''',
      sampleProgramOutput: 'Hello World',
      programDescription: '''Single or multi-line comments?
It is up to you which you want to use. Normally, we use // for short comments, and /* */ for longer.'''),
];
