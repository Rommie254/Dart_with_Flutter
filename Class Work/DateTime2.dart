// An extension method that allow you to add functionality to DateTime
extension on DateTime {
  String get humanize {
    // you have access to the instance in extension methods via 'this' keyword.
    return "${this.day}/${this.month}/${this.year}";
  }
}

void main() {
  DateTime date = DateTime.now();
  print("Today's date is: ");
  print(date.humanize);
}
