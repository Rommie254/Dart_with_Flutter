import 'dart:io';

void main() {
  print("Please enter a number: ");
  double x = double.parse(stdin.readLineSync()!);
  if (x > 10) {
    print("Your number is greater than 10.");
  } else if (x < 10) {
    print("Your number is less than 10.");
  } else {
    print("Your number is equal to 10.");
  }
}
