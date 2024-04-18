/*
// Asynchronous operation --allows operation of multiple tasks eg fetching data from a database 
import 'dart:async';

void main() async {
  print("Fetching weather data...");
  String weather = await fetchWeatherData();
  print("Weather data: $weather");
}

// Future function to get weather data
Future<String> fetchWeatherData() {
  return Future.delayed(Duration(seconds: 3), () {
    return "Sunny";
  });
}

*/

/*
// Enumerators in Dart
enum weekDays {
  // Constant values
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

void main() {
  //access enum values
  print(weekDays.Monday); //prints values and class/enum name

  //returns the day without the prefix
  print(weekDays.Monday.toString().split('.').last);

  for (var weekDay in weekDays.values) {
    print(weekDay.toString().split(".").last);
  }
}
*/

//Enum 2
enum Color {
  red,
  green,
  blue,
  yellow,
}

void main() {
  // Accessing enum values
  print("My favorite color is: ${Color.blue.toString().split(".").last}");

  // Iterating through enum values
  print("\nColors: ");
  for (var color in Color.values) {
    print(color.toString().split(".").last);
  }
}
