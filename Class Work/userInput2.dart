import 'dart:io';

void main() {
  print("Enter true or false: ");

  //take data entered by user, store it in variable input
  String input = stdin.readLineSync()!;

  //function checkboolean that checks whether user input is true or false
  bool? checkboolean(String input) {
    if (input == "true") {
      return true;
    } else if (input == "false") {
      return false;
    } else {
      return null;
    }
  }

  bool? UserBoolean = checkboolean(input.toLowerCase());
  if (UserBoolean != null) {
    print("You entered: $UserBoolean");
  } else {
    print("Invalid input.");
  }
}
