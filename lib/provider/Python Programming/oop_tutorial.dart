import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> pythonOOPTutorial = [
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'OOP in Python',
      topicDescription:
          '''Python is a multi-paradigm programming language. It supports different programming approaches.

One of the popular approaches to solve a programming problem is by creating objects. This is known as Object-Oriented Programming (OOP).

An object has two characteristics:

attributes
behavior
Let's take an example:

A parrot is an object, as it has the following properties:

name, age, color as attributes
singing, dancing as behavior
The concept of OOP in Python focuses on creating reusable code. This concept is also known as DRY (Don't Repeat Yourself).''',
      sampleProgram: '''#!/usr/bin/python

class Employee:
   'Common base class for all employees'
   empCount = 0

   def init(self, name, salary):
      self.name = name
      self.salary = salary
      Employee.empCount += 1

   def displayCount(self):
     print "Total Employee %d" % Employee.empCount

   def displayEmployee(self):
      print "Name : ", self.name,  ", Salary: ", self.salary

"This would create first object of Employee class"
emp1 = Employee("Zara", 2000)
"This would create second object of Employee class"
emp2 = Employee("Manni", 5000)
emp1.displayEmployee()
emp2.displayEmployee()
print "Total Employee %d" % Employee.empCount''',
      sampleProgramOutput: '''Name :  Zara ,Salary:  2000
Name :  Manni ,Salary:  5000
Total Employee 2''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'Inheritance',
      topicDescription:
          '''Inheritance is a way of creating a new class for using details of an existing class without modifying it. The newly formed class is a derived class (or child class). Similarly, the existing class is a base class (or parent class).''',
      sampleProgram: '''# parent class
class Bird:

    def init(self):
        print("Bird is ready")

    def whoisThis(self):
        print("Bird")

    def swim(self):
        print("Swim faster")

# child class
class Penguin(Bird):

    def init(self):
        # call super() function
        super().init()
        print("Penguin is ready")

    def whoisThis(self):
        print("Penguin")

    def run(self):
        print("Run faster")

peggy = Penguin()
peggy.whoisThis()
peggy.swim()
peggy.run()''',
      sampleProgramOutput: '''Bird is ready
Penguin is ready
Penguin
Swim faster
Run faster''',
      programDescription:
          '''In the above program, we created two classes i.e. Bird (parent class) and Penguin (child class). The child class inherits the functions of parent class. We can see this from the swim() method.'''),
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'Encapsulation',
      topicDescription:
          '''Using OOP in Python, we can restrict access to methods and variables. This prevents data from direct modification which is called encapsulation. In Python, we denote private attributes using underscore as the prefix i.e single _ or double __.''',
      sampleProgram: '''class Computer:

    def init(self):
        self.maxprice = 900

    def sell(self):
        print("Selling Price: {}".format(self.maxprice))

    def setMaxPrice(self, price):
        self.maxprice = price

c = Computer()
c.sell()

# change the price
c.maxprice = 1000
c.sell()

# using setter function
c.setMaxPrice(1000)
c.sell()''',
      sampleProgramOutput: '''Selling Price: 900
Selling Price: 900
Selling Price: 1000''',
      programDescription: ''' the above program, we defined a Computer class.

We used init() method to store the maximum selling price of Computer. We tried to modify the price. However, we can't change it because Python treats the __maxprice as private attributes.

As shown, to change the value, we have to use a setter function i.e setMaxPrice() which takes price as a parameter.'''),
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'Polymorphism',
      topicDescription: '''
Polymorphism is an ability (in OOP) to use a common interface for multiple forms (data types).

Suppose, we need to color a shape, there are multiple shape options (rectangle, square, circle). However we could use the same method to color any shape. This concept is called Polymorphism.''',
      sampleProgram: '''class Parrot:

    def fly(self):
        print("Parrot can fly")

    def swim(self):
        print("Parrot can't swim")

class Penguin:

    def fly(self):
        print("Penguin can't fly")

    def swim(self):
        print("Penguin can swim")

# common interface
def flying_test(bird):
    bird.fly()

#instantiate objects
blu = Parrot()
peggy = Penguin()

# passing the object
flying_test(blu)
flying_test(peggy)''',
      sampleProgramOutput: '''Parrot can fly
Penguin can't fly''',
      programDescription:
          '''In the above program, we defined two classes Parrot and Penguin. Each of them have a common fly() method. However, their functions are different.

To use polymorphism, we created a common interface i.e flying_test() function that takes any object and calls the object's fly() method. Thus, when we passed the blu and peggy objects in the flying_test() function, it ran effectively.'''),
];
