import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> pythonArrayTutorial = [
  ProgrammingTutorial(
      id: 3,
      topicTitle: 'Python Array',
      topicDescription:
          '''An array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together. This makes it easier to calculate the position of each element by simply adding an offset to a base value, i.e., the memory location of the first element of the array (generally denoted by the name of the array).
For simplicity, we can think of an array a fleet of stairs where on each step is placed a value (let’s say one of your friends). Here, you can identify the location of any of your friends by simply knowing the count of the step they are on. Array can be handled in Python by a module named array. They can be useful when we have to manipulate only a specific data type values. A user can treat lists as arrays. However, user cannot constraint the type of elements stored in a list. If you create arrays using the array module, all elements of the array must be of the same type.''',
      sampleProgram: '''# Python program to demonstrate
# Creation of Array
 
# importing "array" for array creations
import array as arr
 
# creating an array with integer type
a = arr.array('i', [1, 2, 3])
 
# printing original array
print ("The new created array is : ", end =" ")
for i in range (0, 3):
    print (a[i], end =" ")
print()
 
# creating an array with float type
b = arr.array('d', [2.5, 3.2, 3.3])
 
# printing original array
print ("The new created array is : ", end =" ")
for i in range (0, 3):
    print (b[i], end =" ")''',
      sampleProgramOutput: '''The new created array is :  1 2 3 
The new created array is :  2.5 3.2 3.3''',
      programDescription:
          '''Array in Python can be created by importing array module. array(data_type, value_list) is used to create an array with data type and value list specified in its arguments.'''),
];
