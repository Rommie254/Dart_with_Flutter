//creating Student class
class Student {
  String name;
  int age;
  int grade;

  Student(this.name, this.age, this.grade);

  void studentInfo() {
    print("\t Name - $name \n\t Age - $age \n\t Grade Level - $grade \n");
  }
}

//creating Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void teacherInfo() {
    print("\t Name - $name \n\t Age - $age \n\t Subject - $subject");
  }
}

//creating school class that creates objects
class School {
  //method that creates objects
  void createObjects() {
    var student1 = Student("Lauren", 7, 1);
    var teacher1 = Teacher("Ms. Cate", 34, "Literature");

    print("Student Details: ");
    student1.studentInfo();

    print("Teacher's Details: ");
    teacher1.teacherInfo();
  }
}

void main() {
  //create instance of school class
  var school1 = School();

  //call method to create objects and print info
  school1.createObjects();
}
