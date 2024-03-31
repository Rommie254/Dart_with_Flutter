/* 
// Example of a class that doesn't take a constructor
class BankAccount {
  //properties of class (without constructor(initializes properties of a class))
  late String customer_name;
  late int acc_number;
  late double balance;

  void display() {
    print("$customer_name");
    print("$acc_number");
    print("$balance");
  }
}

void main() {
  //object to access class properties
  var account = BankAccount();

  //assigning data
  account.customer_name = "Rommie";
  account.acc_number = 891736283;
  account.balance = 20500.80;

  //accessing the function
  account.display();
}
*/

/* 
//Example of a class that has a constructor
class Person {
  // Properties/ATTRIBUTES
  String name;
  String phone;
  bool isMarried;
  int age;
  String hobby;
  String nationality;
  String phone_brand;

  // Constructor--initializes the properties of the class (parametized constructor)
  Person(this.name, this.phone, this.isMarried, this.age, this.hobby,
      this.nationality, this.phone_brand);

  // Method to display information- Used to show the behaviour of the object
  void displayInfo() {
    print('Name: $name');
    print('Phone Number: $phone');
    print("Phone Brand: $phone_brand");
    print('Marital Status: ${isMarried ? 'Married' : 'Single'}');
    print('Age: $age');
    print("Nationality: $nationality");
    print("Favorite Hobby: $hobby");
  }
}

void main() {
  // Creating an instance of the Person class
  var person = Person('John Doe', '+1234567890', false, 30, 'Singing', "Kenyan",
      "Redmi Note 8 pro");

  // Calling the displayInfo method to print information
  person.displayInfo();
}
*/

/* 
// Example 3

//Declaring a class
class Dog {
  //Declaring the properties of the class
  String breed;
  String color;
  String origin;

  //Constructor: used to initialize the declared properties of the class
  Dog(this.breed, this.color, this.origin);

  //Methods: 2 methods batk and run
  void bark() {
    print("Woof!");
  }

  void run() {
    print("The dog is running.");
  }
}

void main() {
  //Creating an instance of the class (Object)
  var myDog = Dog("Chiwawa", "Light Grey", "Siberian");

  //Accessing the defined properties
  print("Breed: ${myDog.breed}");
  print("Color: ${myDog.color}");
  print("Origin: ${myDog.origin}");

  //Calling the methods using the object
  myDog.bark();
  myDog.run();
}
*/
//Example 4
class Area {
  double length;
  double width;

  Area(this.length, this.width);

  double calculateArea() {
    double calculatedArea = length * width;
    return calculatedArea;
  }
}

void main() {
  var values = Area(15, 8);

  print("The calculated area is: ${values.calculateArea()}");
}
