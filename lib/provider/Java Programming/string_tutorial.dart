import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> javaStringTutorial = [
  ProgrammingTutorial(
      id: 2,
      topicTitle: 'Strings in Java',
      topicDescription:
          '''In Java, string is basically an object that represents sequence of char values. An array of characters works same as Java string. For example:

char[] ch={'j','a','v','a','t','p','o','i','n','t'};
String s=new String(ch);
is same as:

String s="javatpoint";
Java String class provides a lot of methods to perform operations on strings such as compare(), concat(), equals(), split(), length(), replace(), compareTo(), intern(), substring() etc.

The java.lang.String class implements Serializable, Comparable and CharSequence interfaces.
CharSequence Interface
The CharSequence interface is used to represent the sequence of characters. String, StringBuffer and StringBuilder classes implement it. It means, we can create strings in Java by using these three classes.
The Java String is immutable which means it cannot be changed. Whenever we change any string, a new instance is created. For mutable strings, you can use StringBuffer and StringBuilder classes.

We will discuss immutable string later. Let's first understand what String in Java is and how to create the String object.''',
      sampleProgram: '''public class StringExample{
public static void main(String args[]){
String s1="java";//creating string by Java string literal
char ch[]={'s','t','r','i','n','g','s'};
String s2=new String(ch);//converting char array to string
String s3=new String("example");//creating Java string by new keyword
System.out.println(s1);
System.out.println(s2);
System.out.println(s3);
}}''',
      sampleProgramOutput: '''java
strings
example''',
      programDescription:
          '''The above code, converts a char array into a String object. And displays the String objects s1, s2, and s3 on console using println() method.'''),
];
