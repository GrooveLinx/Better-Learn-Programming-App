import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> cArrayTutorial = [
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'C++ Arrays',
      topicDescription:
          '''In C++ std::array is a container that encapsulates fixed size arrays. In C++, array index starts from 0. We can store only fixed set of elements in C++ array.

💠 Advantages of C++ Array
Code Optimization (less code)
Random Access
Easy to traverse data
Easy to manipulate data
Easy to sort data etc.

💠 Disadvantages of C++ Array
Fixed size
C++ Array Types
There are 2 types of arrays in C++ programming:

💠 Single Dimensional Array
💠 Multidimensional Array

C++ Single Dimensional Array
Let's see a simple example of C++ array, where we are going to create, initialize and traverse array.''',
      sampleProgram: '''#include <iostream>
using namespace std;
int main()
{
 int arr[5]={10, 0, 20, 0, 30};  //creating and initializing array
        //traversing array
        for (int i = 0; i < 5; i++)
        {
            cout<<arr[i]<<"\n";
        }
}''',
      sampleProgramOutput: '''10
0
20
0
30''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Traversal using foreach loop',
      topicDescription:
          'We can also traverse the array elements using foreach loop. It returns array element one by one.',
      sampleProgram: '''#include <iostream>
using namespace std;
int main()
{
 int arr[5]={10, 0, 20, 0, 30}; //creating and initializing array
        //traversing array
       for (int i: arr)
        {
            cout<<i<<"\\n";
        }
}
''',
      sampleProgramOutput: '''10
20
30
40
50''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'C++ Passing Array to Function',
      topicDescription:
          '''In C++, to reuse the array logic, we can create function. To pass array to function in C++, we need to provide only array name.

functionname(arrayname); //passing array to function
C++ Passing Array to Function Example: print array elements
Let's see an example of C++ function which prints the array elements.

''',
      sampleProgram: '''#include <iostream>
using namespace std;
void printArray(int arr[5]);
int main()
{
        int arr1[5] = { 10, 20, 30, 40, 50 };
        int arr2[5] = { 5, 15, 25, 35, 45 };
        printArray(arr1); //passing array to function
        printArray(arr2);
}
void printArray(int arr[5])
{
    cout << "Printing array elements:"<< endl;
    for (int i = 0; i < 5; i++)
    {
                   cout<<arr[i]<<"\\n";
    }
}''',
      sampleProgramOutput: '''Printing array elements:
10
20
30
40
50
Printing array elements:
5
15
25
35
45''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'C++ Passing Array to Function Example: Print minimum number',
      topicDescription:
          '''Let's see an example of C++ array which prints minimum number in an array using function.''',
      sampleProgram: '''#include <iostream>
using namespace std;
void  printMin(int arr[5]);
int main()
{
   int arr1[5] = { 30, 10, 20, 40, 50 };
        int arr2[5] = { 5, 15, 25, 35, 45 };
        printMin(arr1);//passing array to function
         printMin(arr2);
}
void  printMin(int arr[5])
{
    int min = arr[0];
        for (int i = 0; i > 5; i++)
        {
            if (min > arr[i])
            {
                min = arr[i];
            }
        }
        cout<< "Minimum element is: "<< min <<"\n";
}''',
      sampleProgramOutput: '''Minimum element is: 10
Minimum element is: 5''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: 'Multidimensional Arrays',
      topicDescription:
          '''The multidimensional array is also known as rectangular arrays in C++. It can be two dimensional or three dimensional. The data is stored in tabular form (row ∗ column) which is also known as matrix.
Multidimensional Array Example
Let's see a simple example of multidimensional array in C++ which declares, initializes and traverse two dimensional arrays.''',
      sampleProgram: '''
#include <iostream>
using namespace std;
int main()
{
  int test[3][3];  //declaration of 2D array
    test[0][0]=5;  //initialization
    test[0][1]=10;
    test[1][1]=15;
    test[1][2]=20;
    test[2][0]=30;
    test[2][2]=10;
    //traversal
    for(int i = 0; i < 3; ++i)
    {
        for(int j = 0; j < 3; ++j)
        {
            cout<< test[i][j]<<" ";
        }
        cout<<"\n"; //new line at each row
    }
    return 0;
}''',
      sampleProgramOutput: '''5 10 0 
0 15 20 
30 0 10''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle:
          'Multidimensional Array Example: Declaration and initialization at same time',
      topicDescription:
          '''Let's see a simple example of multidimensional array which initializes array at the time of declaration.''',
      sampleProgram: '''
#include <iostream>
using namespace std;
int main()
{
  int test[3][3] =
    {
        {2, 5, 5},
        {4, 0, 3},
        {9, 1, 8}  };  //declaration and initialization
    //traversal
    for(int i = 0; i < 3; ++i)
    {
        for(int j = 0; j < 3; ++j)
        {
            cout<< test[i][j]<<" ";
        }
        cout<<"\n"; //new line at each row
    }
    return 0;
}''',
      sampleProgramOutput: '''2 5 5 
4 0 3 
9 1 8''',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '',
      topicDescription: '',
      sampleProgram: '',
      sampleProgramOutput: '',
      programDescription: ''),
  ProgrammingTutorial(
      id: 1,
      topicTitle: '',
      topicDescription: '',
      sampleProgram: '',
      sampleProgramOutput: '',
      programDescription: ''),
];
