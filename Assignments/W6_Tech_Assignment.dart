// Task 1: a function that returns sum of 2 numbers
import 'dart:io';

int addition(int x, int y) {
  return x + y;
}

// Task 2: using for loop to print 1-10
void printNumbers1() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: using switch statement to check for different string values and print based on value
void checkString(String value) {
  switch (value) {
    case "Hello":
      print("- Hello! My name is Sharon.");
      break;
    case "Dart":
      print("- Dart is an intriguing programming language.");
      break;
    default:
      print("- Error! Unrecognized value.");
  }
}

// Task 4: using while loop to print 20-10
void printNumbers2() {
  int x = 20;
  while (x >= 10) {
    print(x);
    x--;
  }
}

// Task 5: check if a number is even or odd and print the result
void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print("- $number is an even number.");
  } else {
    print("- $number is an odd number.");
  }
}

// Task 6: find the latgest number in a list
int findLargest(List<int> numbers) {
  //initialize variable to the first number in the list
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

// Task 7: using try-catch block to catch an exception and print error message
void catchError() {
  try {
    // Trying to access an element at an index that doesn't exist
    List<int> numbers = [11, 5, 9];
    print(numbers[4]);
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Implementing Task 1
  int x = 10;
  int y = 20;
  print("\nTask 1: The sum of $x and $y is ${addition(x, y)}.");

  // Implementing Task 2
  print("\nTask 2 (Print 1 to 10):");
  printNumbers1();

  // Implementing Task 3
  print('\nTask 3 (Checking string values..):');
  checkString('Hello');
  checkString('Dart');
  checkString('dart');

  // Implementing Task 4
  print("\nTask 4 (Print 20 to 10):");
  printNumbers2();

  // Implementing Task 5
  print("\nTask 5 (Checking numbers): ");
  checkEvenOdd(20);
  checkEvenOdd(9);

  // Implementing Task 6
  print("\nTask 6 - Enter a list of numbers separated by spaces: ");
  String input = stdin.readLineSync()!;
  List<String> numberStrings = input.split(' ');
  List<int> numbers = numberStrings.map((str) => int.parse(str)).toList();
  print("The largest number in $numbers is ${findLargest(numbers)}.");

  // Implementing Task 7
  print("\nTask 7 (Catching an exception):");
  catchError();
}
