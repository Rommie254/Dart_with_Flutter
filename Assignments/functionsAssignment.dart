int addTwo(num1, num2) {
  int sum = num1 + num2;
  return sum;
}

int subtractTwo(num1, num2) {
  int diff = num2 - num1;
  return diff;
}

double multiplyTwo(num3, num4) {
  double product = num3 * num4;
  return product;
}

double divideTwo(num3, num4) {
  double quotient = num4 / num3;
  return quotient;
}

int stringLength(String name) {
  return name.length;
}

String getFirstElement(List cities) {
  return cities[0];
}

void main() {
  //Calling addition and subtraction functions
  int num1 = 100;
  int num2 = 350;
  print("The sum of $num1 and $num2 is: ${addTwo(num1, num2)}");
  print(
      "The difference between $num1 and $num2 is: ${subtractTwo(num1, num2)}");

  //Calling multiplication and division functions
  double num3 = 120.5;
  double num4 = 246.2;
  print("The product of $num3 and $num4 is: ${multiplyTwo(num3, num4)}");
  print("The quotient of $num3 and $num4 is: ${divideTwo(num3, num4)}");

  //Calling string length function
  String name = "Kyle Amani";
  print("The length of the string '$name' is: ${stringLength(name)}");

  //Calling list function
  List cities = ["Denver", "Nepal", "Sofia", "Puddle"];
  print("The first city in the list $cities is: ${getFirstElement(cities)}");
}
