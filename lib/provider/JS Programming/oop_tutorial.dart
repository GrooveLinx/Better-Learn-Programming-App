import 'package:code_quiz_v2/models/language-model.dart';

final List<ProgrammingTutorial> jsOOPTutorial = [
  ProgrammingTutorial(
      id: 6,
      topicTitle: 'JS OOP',
      topicDescription:
          '''As JavaScript is widely used in Web Development, in this article we would explore some of the Object Oriented mechanism supported by JavaScript to get most out of it. Some of the common interview question in JavaScript on OOPS includes,- “How Object-Oriented Programming is implemented in JavaScript? How they differ from other languages? Can you implement Inheritance in JavaScript and so on…”
There are certain features or mechanisms which makes a Language Object-Oriented like: 
 

Object
Classes
Encapsulation
Inheritance''',
      sampleProgram: '''// Defining class using es6
class Vehicle {
  constructor(name, maker, engine) {
    this.name = name;
    this.maker =  maker;
    this.engine = engine;
  }
  getDetails(){
      return (The name of the bike is \${this.name.)
  }
}
// Making object with the help of the constructor
let bike1 = new Vehicle('Hayabusa', 'Suzuki', '1340cc');
let bike2 = new Vehicle('Ninja', 'Kawasaki', '998cc');

console.log(bike1.name);    // Hayabusa
console.log(bike2.maker);   // Kawasaki
console.log(bike1.getDetails());''',
      sampleProgramOutput: '''Hayabusa
Kawasaki
The name of the bike is Hayabusa''',
      programDescription:
          '''As seen in the above example it is much simpler to define and reuse object in ES6. Hence, we would be using ES6 in all our examples.'''),
];
