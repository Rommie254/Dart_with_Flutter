void main() {
  int num1 = 10;
  print(num1);

  double num2 = 5.5;
  print(num2);

//example of string datatype
  String school = "PLP";
  print("Hey, I'm a student at $school.");

//boolean datatype
  bool IsGraduated = true;
  print("Graduation status:$IsGraduated");

//lists: ordered collection of items
  var cars1 = ["BMW", "Audi", "Benz"];
  List cars2 = ["Audi", "Toyota", "Nissan"];
  print(cars1);
  print(cars2);
  print(cars1[1]);

//Maps: dynamic collection of key:value pairs
  Map details = {"Rommie": 29, "Sha": 20, "Carol": 18};
  print(details);

  Map<String, int> records = {"Brianna": 57, "Aidan": 20, "Carol": 18};
  print(records);

//Runes: emojis
  String runes = "Runes in dart: \u{1f600} \u{1F64B} \u{1F680}";
  print(runes);
}
