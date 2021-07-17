import 'package:code_quiz_v2/models/language-model.dart';

final List<Language> language = [
  Language(
      id: 1,
      name: 'C/C++',
      info: 'C/C++ Programming Language',
      imagePath: 'images/c_logo.png',
      description:
          '''C++ is a cross-platform language that can be used to create high-performance applications.

C++ was developed by Bjarne Stroustrup, as an extension to the C language.

C++ gives programmers a high level of control over system resources and memory.

The language was updated 3 major times in 2011, 2014, and 2017 to C++11, C++14, and C++17.'''),
  Language(
      id: 2,
      name: 'Java',
      info: 'Java Programming Language',
      imagePath: 'images/java_logo.png',
      description: '''Java is a popular programming language, created in 1995.

It is owned by Oracle, and more than 3 billion devices run Java.

It is used for:

Mobile applications (specially Android apps)
Desktop applications
Web applications
Web servers and application servers
Games
Database connection
And much, much more!'''),
  Language(
    id: 3,
    name: 'Python',
    info: 'Python Programming Language',
    imagePath: 'images/python_logo.png',
    description:
        '''Python is a popular programming language. It was created by Guido van Rossum, and released in 1991.

It is used for :

Web development (server-side)
Software development
Mathematics,
System scripting.

Python can be used on a server to create web applications.
Python can be used alongside software to create workflows.
Python can connect to database systems. It can also read and modify files.
Python can be used to handle big data and perform complex mathematics.
Python can be used for rapid prototyping, or for production-ready software development.''',
  ),
  Language(
    id: 4,
    name: 'Dart',
    info: 'Dart Programming Language',
    imagePath: 'images/dart_logo.png',
    description:
        '''Dart is a general-purpose, high-level modern programming language which is originally developed by Google. It is the new programming language which is emerged in 2011, but its stable version was released in June 2017. Dart is not so popular at that time, but It gains popularity when it is used by the Flatter.

Dart is a dynamic, class-based, object-oriented programming language with closure and lexical scope. Syntactically, it is quite similar to Java, C, and JavaScript. If you know any of these programming languages, you can easily learn the Dart programming language.

Dart is an open-source programming language which is widely used to develop the mobile application, modern web-applications, desktop application, and the Internet of Things (IoT) using by Flatter framework. It also supports a few advance concepts such as interfaces, mixins, abstract classes, refield generics, and type interface. It is a compiled language and supports two types of compilation techniques.

AOT (Ahead of Time) - It converts the Dart code in the optimized JavaScript code with the help of the dar2js compiler and runs on all modern web-browser. It compiles the code at build time.
JOT (Just-In-Time) - It converts the byte code in the machine code (native code), but only code that is necessary.

Dart was revealed for the first time in the GOTO conference in the month of 10th - 12th October 2011 at Aarhus, Denmark. It is initially designed by the Lars bark and Kespar and developed by Google.''',
  ),
  Language(
    id: 5,
    name: 'HTML/CSS',
    info: 'HTML/CSS',
    imagePath: 'images/html_logo.png',
    description: '''HTML : 
HTML stands for Hyper Text Markup Language
HTML is the standard markup language for creating Web pages
HTML describes the structure of a Web page
HTML consists of a series of elements
HTML elements tell the browser how to display the content
HTML elements label pieces of content such as "this is a heading", "this is a paragraph", "this is a link", etc.

CSS :
CSS stands for Cascading Style Sheets
CSS describes how HTML elements are to be displayed on screen, paper, or in other media
CSS saves a lot of work. It can control the layout of multiple web pages all at once
External stylesheets are stored in CSS files''',
  ),
  Language(
    id: 6,
    name: 'JavaScript',
    info: 'JavaScript Programming Language',
    imagePath: 'images/js_logo.png',
    description:
        '''JavaScript (often shortened to JS) is a lightweight, interpreted, object-oriented language with first-class functions, and is best known as the scripting language for Web pages, but it's used in many non-browser environments as well. It is a prototype-based, multi-paradigm scripting language that is dynamic, and supports object-oriented, imperative, and functional programming styles.

JavaScript runs on the client side of the web, which can be used to design / program how the web pages behave on the occurrence of an event. JavaScript is an easy to learn and also powerful scripting language, widely used for controlling web page behavior.

Contrary to popular misconception, JavaScript is not "Interpreted Java". In a nutshell, JavaScript is a dynamic scripting language supporting prototype based object construction. The basic syntax is intentionally similar to both Java and C++ to reduce the number of new concepts required to learn the language. Language constructs, such as if statements, for and while loops, and switch and try ... catch blocks function the same as in these languages (or nearly so).

JavaScript can function as both a procedural and an object oriented language. Objects are created programmatically in JavaScript, by attaching methods and properties to otherwise empty objects at run time, as opposed to the syntactic class definitions common in compiled languages like C++ and Java. Once an object has been constructed it can be used as a blueprint (or prototype) for creating similar objects.

JavaScript's dynamic capabilities include runtime object construction, variable parameter lists, function variables, dynamic script creation (via eval), object introspection (via for ... in), and source code recovery (JavaScript programs can decompile function bodies back into their source text).''',
  ),
];
