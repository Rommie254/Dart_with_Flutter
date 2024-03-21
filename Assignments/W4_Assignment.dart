/* 
Implementing an object-oriented model that uses classes and inhertiance. 

Implementing a class that overrides an inherited method
*/

import 'dart:io';

// Defining a superclass
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greetings() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

// Defining the subclass
class Student extends Person {
  String school;

  Student(String name, int age, this.school) : super(name, age);

  @override
  void greetings() {
    print(
        "Hello. My name is $name, I am $age years old and I study at $school.");
  }
}

/* Defining a class that implements an interface */
abstract class Printable {
  void printInfo();
}

class Book implements Printable {
  String title;
  String author;

  Book(this.title, this.author);

  @override
  void printInfo() {
    print('The title of the book I am reading is "$title" by $author.');
  }
}

/* Creating an instance of a class that is initialized with data from a file */

void main() {
  // Read data from the file
  final file = File('data.txt');
  final data = file.readAsStringSync().trim().split(',');

  final student = Student(data[0], int.parse(data[1]), data[2]);
  student.greetings();

  final book = Book(data[3], data[4]);
  book.printInfo();

  /* A method that demonstrates the use of a loop */
  void printNumbers() {
    int i = 1;
    for (i; i <= 6; i++) {
      print(i);
    }
  }

  print("Number iteration using for loop: ");
  printNumbers();
}
