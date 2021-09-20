import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> pythonExtraTutorial = [
  ProgrammingTutorial(
      id: 3,
      topicTitle:
          'Python: Compute the square of first N Fibonacci numbers, use map function and generate a list of the numbers',
      topicDescription: '''Fibonacci numbers:

From Wikipedia,
In mathematics, the Fibonacci numbers, commonly denoted Fn, form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

F0 = 0,   F1 = 1,

and

Fn = Fn - 1 + Fn - 2,

for n > 1.

The beginning of the sequence is thus:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144,....''',
      sampleProgram: '''import itertools
n = 10
def fibonacci_nums(x=0, y=1):
    yield x
    while True:
        yield y
        x, y = y, x + y
print("First 10 Fibonacci numbers:")
result = list(itertools.islice(fibonacci_nums(), n))
print(result)
square = lambda x: x * x 
print("\nAfter squaring said numbers of the list:")
print(list(map(square, result)))''',
      sampleProgramOutput: '''First 10 Fibonacci numbers:
[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

After squaring said numbers of the list:
[0, 1, 1, 4, 9, 25, 64, 169, 441, 1156]''',
      programDescription: ''''''),
];
