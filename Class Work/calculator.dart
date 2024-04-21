import "dart:io";

// Function to take first user input (numbers)
double numInput(String prompt) {
  print(prompt);
  double number = double.parse(stdin.readLineSync()!);
  return number;
}

// Function to take second user input (operand)
String operandInput() {
  print("Enter the operation type, either +, -, /, or * :");
  String operand = stdin.readLineSync()!;
  return operand;
}

// Main function
void main() {
  print(
      "\nSimpe Calculator to Perform Addition(+), Subtraction(-), Division(/), & Multiplication(*).\n");
  double num1 = numInput("Enter the first number:");
  double num2 = numInput("Enter the second number: ");
  double answer = 0.0;
  String operand = operandInput();

  if (operand == "+") {
    answer = num1 + num2;
    print("$num1 $operand $num2 = $answer\n");
  } else if (operand == "-") {
    answer = num1 - num2;
    print("$num1 $operand $num2 = $answer\n");
  } else if (operand == "/") {
    answer = num1 / num2;
    print("$num1 $operand $num2 = $answer\n");
  } else if (operand == "*") {
    answer = num1 * num2;
    print("$num1 $operand $num2 = $answer\n");
  } else {
    print("Please enter a valid input.\n");
  }
}
