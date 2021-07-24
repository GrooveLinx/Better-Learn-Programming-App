import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> cOOPTutorial = [
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'OOPs (Object Oriented Programming System)',
      topicDescription: '''
💠 Object
💠 Class
💠 Inheritance
💠 Polymorphism
💠 Abstraction
💠 Encapsulation

💠 Object
Any entity that has state and behavior is known as an object. For example: chair, pen, table, keyboard, bike etc. It can be physical and logical.

💠 Class
Collection of objects is called class. It is a logical entity.

💠 Inheritance
When one object acquires all the properties and behaviours of parent object i.e. known as inheritance. It provides code reusability. It is used to achieve runtime polymorphism.

💠 Polymorphism
When one task is performed by different ways i.e. known as polymorphism. For example: to convince the customer differently, to draw something e.g. shape or rectangle etc.

In C++, we use Function overloading and Function overriding to achieve polymorphism.

💠 Abstraction
Hiding internal details and showing functionality is known as abstraction. For example: phone call, we don't know the internal processing.

In C++, we use abstract class and interface to achieve abstraction.

💠 Encapsulation
Binding (or wrapping) code and data together into a single unit is known as encapsulation. For example: capsule, it is wrapped with different medicines.''',
      sampleProgram: '',
      sampleProgramOutput: '',
      programDescription:
          '''Advantage of OOPs over Procedure-oriented programming language
OOPs makes development and maintenance easier where as in Procedure-oriented programming language it is not easy to manage if code grows as project size grows.
OOPs provide data hiding whereas in Procedure-oriented programming language a global data can be accessed from anywhere.
OOPs provide ability to simulate real-world event much more effectively. We can provide the solution of real word problem if we are using the Object-Oriented Programming language.'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'C++ Class',
      topicDescription:
          '''In C++, class is a group of similar objects. It is a template from which objects are created. It can have fields, methods, constructors etc.

Let's see an example of C++ class that has three fields only.''',
      sampleProgram: '''class Student
 {
     public:
     int id;  //field or data member
     float salary; //field or data member
     String name;//field or data member
 }''',
      sampleProgramOutput: '',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'C++ Object and Class Example.',
      topicDescription: '''
Let's see an example of class that has two fields: id and name. It creates instance of the class, initializes the object and prints the object value.''',
      sampleProgram: '''#include <iostream>
using namespace std;
class Student {
   public:
      int id;//data member (also instance variable)
      string name;//data member(also instance variable)
};
int main() {
    Student s1; //creating an object of Student
    s1.id = 201;
    s1.name = "Fahim Muntashir";
    cout<<s1.id<<endl;
    cout<<s1.name<<endl;
    return 0;
}''',
      sampleProgramOutput: '''201
Fahim Muntashir''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'C++ Constructor',
      topicDescription:
          '''In C++, constructor is a special method which is invoked automatically at the time of object creation. It is used to initialize the data members of new object generally. The constructor in C++ has the same name as class or structure.

There can be two types of constructors in C++.

Default constructor
Parameterized constructor
C++ Default Constructor
A constructor which has no argument is known as default constructor. It is invoked at the time of creating object.

Let's see the simple example of C++ default Constructor.''',
      sampleProgram: '''#include <iostream>
using namespace std;
class Employee
 {
   public:
        Employee()
        {
            cout<<"Default Constructor Invoked"<<endl;
        }
};
int main(void)
{
    Employee e1; //creating an object of Employee
    Employee e2;
    return 0;
}''',
      sampleProgramOutput: '''Default Constructor Invoked 
Default Constructor Invoked''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '''C++ Parameterized Constructor''',
      topicDescription:
          '''A constructor which has parameters is called parameterized constructor. It is used to provide different values to distinct objects.

Let's see the simple example of C++ Parameterized Constructor.''',
      sampleProgram: '''#include <iostream>
using namespace std;
class Employee {
   public:
       int id;//data member (also instance variable)
       string name;//data member(also instance variable)
       float salary;
       Employee(int i, string n, float s)
        {
            id = i;
            name = n;
            salary = s;
        }
       void display()
        {
            cout<<id<<"  "<<name<<"  "<<salary<<endl;
        }
};
int main(void) {
    Employee e1 =Employee(101, "Munna", 890000); //creating an object of Employee 
    Employee e2=Employee(102, "Arnob", 59000); 
    e1.display();
    e2.display();
    return 0;
}''',
      sampleProgramOutput: '''101  Munna  890000
102  Arnob  59000''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '''C++ Inheritance''',
      topicDescription:
          '''In C++, inheritance is a process in which one object acquires all the properties and behaviors of its parent object automatically. In such way, you can reuse, extend or modify the attributes and behaviors which are defined in other class.

In C++, the class which inherits the members of another class is called derived class and the class whose members are inherited is called base class. The derived class is the specialized class for the base class.Types Of Inheritance
C++ supports five types of inheritance:

Single inheritance
Multiple inheritance
Hierarchical inheritance
Multilevel inheritance
Hybrid inheritance
Derived Classes
A Derived class is defined as the class derived from the base class.
C++ Single Level Inheritance Example: Inheriting Fields
When one class inherits another class, it is known as single level inheritance. Let's see the example of single level inheritance which inherits the fields only.
''',
      sampleProgram: '''#include <iostream>
using namespace std;
 class Account {
   public:
   float salary = 60000;
 };
   class Programmer: public Account {
   public:
   float bonus = 5000;
   };
int main(void) {
     Programmer p1;
     cout<<"Salary: "<<p1.salary<<endl;
     cout<<"Bonus: "<<p1.bonus<<endl;
    return 0;
}''',
      sampleProgramOutput: '''Salary: 60000
Bonus: 5000''',
      programDescription: '''The Syntax of Derived class:

class derived_class_name :: visibility-mode base_class_name
{
    // body of the derived class.
}'''),
  ProgrammingTutorial(
      id: 1,
      topicTitle:
          '''C++ Single Level Inheritance Example: Inheriting Methods''',
      topicDescription: '''''',
      sampleProgram: '''#include <iostream>
using namespace std;
 class Animal {
   public:
 void eat() {
    cout<<"Eating..."<<endl;
 }
   };
   class Dog: public Animal
   {
       public:
     void bark(){
    cout<<"Barking...";
     }
   };
int main(void) {
    Dog d1;
    d1.eat();
    d1.bark();
    return 0;
}''',
      sampleProgramOutput: '''Eating...
Barking...''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '''C++ Multi Level Inheritance Example''',
      topicDescription:
          '''When one class inherits another class which is further inherited by another class, it is known as multi level inheritance in C++. Inheritance is transitive so the last derived class acquires all the members of all its base classes.

Let's see the example of multi level inheritance in C++.''',
      sampleProgram: '''#include <iostream>
using namespace std;
 class Animal {
   public:
 void eat() {
    cout<<"Eating..."<<endl;
 }
   };
   class Dog: public Animal
   {
       public:
     void bark(){
    cout<<"Barking..."<<endl;
     }
   };
   class BabyDog: public Dog
   {
       public:
     void weep() {
    cout<<"Weeping...";
     }
   };
int main(void) {
    BabyDog d1;
    d1.eat();
    d1.bark();
     d1.weep();
     return 0;
}''',
      sampleProgramOutput: '''Eating...
Barking...
Weeping...''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '''C++ Polymorphism''',
      topicDescription:
          '''The term "Polymorphism" is the combination of "poly" + "morphs" which means many forms. It is a greek word. In object-oriented programming, we use 3 main concepts: inheritance, encapsulation, and polymorphism.
Real Life Example Of Polymorphism
Let's consider a real-life example of polymorphism. A lady behaves like a teacher in a classroom, mother or daughter in a home and customer in a market. Here, a single person is behaving differently according to the situations.''',
      sampleProgram:
          '''class A                                  //  base class declaration.
  {
       int a;
       public:
       void display()
       {
             cout<< "Class A ";
        }
  };
class B : public A                       //  derived class declaration.
{
    int b;
    public:
   void display()
  {
        cout<<"Class B";
  }
};
''',
      sampleProgramOutput: '''''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '''C++ Runtime Polymorphism Example''',
      topicDescription:
          '''Let's see a simple example of run time polymorphism in C++.''',
      sampleProgram: '''#include <iostream>
using namespace std;
class Animal {
    public:
void eat(){
cout<<"Eating...";
    }
};
class Dog: public Animal
{
 public:
 void eat()
    {           cout<<"Eating bread...";
    }
};
int main(void) {
   Dog d = Dog();
   d.eat();
   return 0;
}''',
      sampleProgramOutput: '''Eating bread...''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle:
          '''C++ Run time Polymorphism Example: By using two derived class''',
      topicDescription: '''''',
      sampleProgram: '''#include <iostream>
using namespace std;
class Shape {                              //  base class
    public:
virtual void draw(){                      // virtual function
cout<<"drawing..."<<endl;
    }
};
class Rectangle: public Shape             //  inheriting Shape class.
{
 public:
 void draw()
   {
       cout<<"drawing rectangle..."<<endl;
    }
};
class Circle: public Shape              //  inheriting Shape class.

{
 public:
 void draw()
   {
      cout<<"drawing circle..."<<endl;
   }
};
int main(void) {
    Shape *s;                      //  base class pointer.
    Shape sh;                      // base class object.
       Rectangle rec;
        Circle cir;
      s=&sh;
     s->draw();
        s=&rec;
     s->draw();
    s=?
    s->draw();
}''',
      sampleProgramOutput: '''drawing...
drawing rectangle...
drawing circle...''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '''Interfaces in C++ (Abstract Classes)''',
      topicDescription:
          '''Abstract classes are the way to achieve abstraction in C++. Abstraction in C++ is the process to hide the internal details and showing functionality only. Abstraction can be achieved by two ways:

Abstract class
Interface
C++ Abstract class
In C++ class is made abstract by declaring at least one of its functions as <>strong>pure virtual function. A pure virtual function is specified by placing "= 0" in its declaration. Its implementation must be provided by derived classes.

Let's see an example of abstract class in C++ which has one abstract method draw(). Its implementation is provided by derived classes: Rectangle and Circle. Both classes have different implementation.''',
      sampleProgram: '''#include <iostream>
using namespace std;
 class Shape
{
    public:
    virtual void draw()=0;
};
 class Rectangle : Shape
{
    public:
     void draw()
    {
        cout < <"drawing rectangle..." < <endl;
    }
};
class Circle : Shape
{
    public:
     void draw()
    {
        cout <<"drawing circle..." < <endl;
    }
};
int main( ) {
    Rectangle rec;
    Circle cir;
    rec.draw();
    cir.draw();
   return 0;
}''',
      sampleProgramOutput: '''drawing rectangle...
drawing circle...''',
      programDescription: ''''''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '''Data Encapsulation in C++''',
      topicDescription:
          '''All C++ programs are composed of the following two fundamental elements −

Program statements (code) − This is the part of a program that performs actions and they are called functions.

Program data − The data is the information of the program which gets affected by the program functions.

Encapsulation is an Object Oriented Programming concept that binds together the data and functions that manipulate the data, and that keeps both safe from outside interference and misuse. Data encapsulation led to the important OOP concept of data hiding.

Data encapsulation is a mechanism of bundling the data, and the functions that use them and data abstraction is a mechanism of exposing only the interfaces and hiding the implementation details from the user.
C++ supports the properties of encapsulation and data hiding through the creation of user-defined types, called classes. We already have studied that a class can contain private, protected and public members. By default, all items defined in a class are private. The variables length, breadth, and height are private. This means that they can be accessed only by other members of the Box class, and not by any other part of your program. This is one way encapsulation is achieved.

To make parts of a class public (i.e., accessible to other parts of your program), you must declare them after the public keyword. All variables or functions defined after the public specifier are accessible by all other functions in your program.

Making one class a friend of another exposes the implementation details and reduces encapsulation. The ideal is to keep as many of the details of each class hidden from all other classes as possible.
Data Encapsulation Example
Any C++ program where you implement a class with public and private members is an example of data encapsulation and data abstraction. Consider the following example −''',
      sampleProgram: '''#include <iostream>
using namespace std;

class Adder {
   public:
      // constructor
      Adder(int i = 0) {
         total = i;
      }

      // interface to outside world
      void addNum(int number) {
         total += number;
      }

      // interface to outside world
      int getTotal() {
         return total;
      };

   private:
      // hidden data from outside world
      int total;
};

int main() {
   Adder a;

   a.addNum(10);
   a.addNum(20);
   a.addNum(30);

   cout << "Total " << a.getTotal() <<endl;
   return 0;
}
''',
      sampleProgramOutput: '''Total 60''',
      programDescription: '''
class Box {
   public:
      double getVolume(void) {
         return length * breadth * height;
      }

   private:
      double length;      // Length of a box
      double breadth;     // Breadth of a box
      double height;      // Height of a box
};'''),
];
