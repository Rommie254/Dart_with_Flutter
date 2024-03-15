/*
//Decision making statements: if, if-else, if-else if-else, 
void main() {
  var age = 29;
  if (age > 18) {
    print("Daniella is a voter in Kenya.");
  } else {
    print("Daniella is not a voter in Kenya.");
  }
}
*/

/*
//program that checks if number is odd,even and prime
import 'dart:io';

void main() {
  print("Enter number: ");
  int num = int.parse(stdin.readLineSync()!);
  //check if its divisible by 2 and leaves no remainder ie even number
  if (num % 2 == 0) {
    print("$num is an even number.");
  } else {
    print("$num is an odd number.");
  }

  bool isprime(int n) {
    if (n <= 1) {
      return false;
    }
    //iterate through numbers from 2
    for (int i = 2; i <= n / 2; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  if (isprime(num)) {
    print("$num is a prime number.");
  } else {
    print("$num is not a prime number.");
  }
}
*/
// for loop
void main() {
  int n = 1;
  for (n; n <= 6; n++) {
    print(n);
  }
}
