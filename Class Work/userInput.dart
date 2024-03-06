/*
import 'dart:io';

void main() {
  int addTwo() {
    print("Enter the first number:");

    //reads user input and converts it into integer, stores to the variable
    int num1 = int.parse(stdin.readLineSync()!);

    print("Enter the second number:");
    int num2 = int.parse(stdin.readLineSync()!);

    int add = num1 + num2;
    return add;
  }

  print(addTwo());
}
*/

/*
// Function that calculates interest
double calculateInterest(principal, time, rate) {
  double interest = principal * time * rate / 100;
  return interest;
}

void main() {
  double principal = 5000;
  double time = 3;
  double rate = 3;
  double result = calculateInterest(principal, time, rate);
  print("Calculated interest is $result");
}
*/

//same interest calculation using ARROW FUNCTION
double calculateInterest(principal, time, rate) =>
    principal * time * rate / 100;

void main() {
  double principal = 5000;
  double time = 3;
  double rate = 3;
  double result = calculateInterest(principal, time, rate);
  print("Calculated interest is $result");
}
