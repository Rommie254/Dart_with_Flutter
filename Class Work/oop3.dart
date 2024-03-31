/*
/* ENCAPSULATION */

class Circle {
  //private variable
  double _radius;

  //constructor
  Circle(this._radius);

  //getter method
  double get radius => _radius;

  //setter method
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print("Invalid radius. Must be greater than 0.");
    }
  }

  //method to calculate area
  double area() {
    return 3.142 * radius * radius;
  }
}

void main() {
  //create object
  var circle = Circle(5.0);

  //access radius using getter and call calculate area method
  print("Initial Radius: ${circle.radius} Area: ${circle.area()}");

  //use setter to update radius
  circle.radius = 8;
  print("New Radius: ${circle.radius} Area: ${circle.area()}");
}
*/

//--------------------------------------------------
//--------------------------------------------------
/*
Extension methods allow you to add functionality to existing libraries and classes. For example, you can add extra functionality to the Dart core String library, that are only available in your app.*/

extension on DateTime {
  String get humanize {
    // you have access to the instance in extension methods via 'this' keyword.
    return "${this.day}/${this.month}/${this.year}";
  }
}

void main() {
  final dateTime = DateTime.now();
  print(dateTime.humanize);
}
