void main() {
//Number datatype: used to store numeric values. Subtypes include int and double
  int num1 = 10;
  print("An example of int datatype is $num1.");

  double num2 = 5.5;
  print("An example of double datatype is $num2.");

//String datatype stores text data.
  String studentName = "Rommie";

//boolean datatype
  bool IsGraduated = true;
  print("Hi, my name is $studentName and graduation status is: $IsGraduated.");

//Lists: ordered collection of objects
  var cars1 = ["BMW", "Audi", "Benz"];
  List cars2 = ["Audi", "Toyota", "Nissan"];
  print("First list: $cars1");
  print("Second list: $cars2");
  print("The second item on the first list is ${cars1[1]}.");

//Maps: dynamic collection of key:value pairs
  Map details = {"Lauren": 29, "Sha": 20, "Carol": 18};
  print("First map: $details");

  Map<String, int> records = {"Brianna": 57, "Aidan": 20, "Carra": 18};
  print("Second map: $records");

//Runes: emojis
  String runes = "Runes in dart: \u{1f600} \u{1F64B} \u{1F680}";
  print(runes);
}
