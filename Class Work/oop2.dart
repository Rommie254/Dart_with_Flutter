/* //EXAMPLE 1 - DEFAULT CONSTRUCTOR
class BankAccount {
  //properties --the question marks specifies that the properties can be null. Can also use keyword late to signify assigning values later
  String? branch_name;
  String? customer_name;
  String? balance;

  //default constructor --non parametized
  BankAccount();

  //function
  display() {
    print("Bank Branch: $branch_name");
    print("Customer Name: $customer_name");
    print("Account Balance: $balance");
  }
}

void main() {
  //create an object to access properties and methods of the class
  var account = BankAccount();

  //assign data to properties
  account.branch_name = "KCB - Nakuru";
  account.customer_name = "Lauren";
  account.balance = "10,000";

  //calling the function
  account.display();
}
*/



/*
// ENCAPSULATION IN OOP -- keeping class implementation hidden

class BankAccount {
  //private variable
  double _balance;

  //parametized constructor
  BankAccount(this._balance);

  //function that makes the private variable accessible
  double get balance => _balance;

  //function that sets a value to the variable
  set balance(double value) {
    if (value > 0) {
      _balance = value;
    } else {
      print("Balance cannot be less than 0");
    }
  }

  //function for output
  details() {
    print("Balance: $balance");
  }
}

void main() {
  var account = BankAccount(1000);
  account.details();
}
*/

/*
// INHERITANCE IN OOP
// Superclass
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print("Vehicle information is: $brand $year");
  }
}

//Subclass --derived class(inherits from Vehicle)
class Car extends Vehicle {
  String model;

  Car(String brand, int year, this.model) : super(brand, year);

  //overide is used when you dont want to write a new function
  void displayCarInfo() {
    print("Car information is: $brand $model $year");
  }
}

void main() {
  //Create an instance of class car
  var mycar = Car("Toyota", 2026, "Cross");

  mycar.displayInfo();
  mycar.displayCarInfo();
}
*/
/*
//POLYMORPHISM IN OOP --object assumes various forms
class Animal {
  void makeSound() {
    print("Any animal can make a sound.");
  }
}

//Derived class 1
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog: Woof!");
  }
}

//Derived class 2
class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat: Meows.");
  }
}

void main() {
  //create instances/objects of derived clases
  Animal genericAnimal = Animal();
  Dog myDog = Dog();
  Cat myCat = Cat();

  //Polymorphism -- same method is called on different types of objects
  genericAnimal.makeSound();
  myDog.makeSound();
  myCat.makeSound();
}
*/

//ABSTRACTION IN OOP --accessing a method in a superclass and giving it functionalities

//Abstrct class

