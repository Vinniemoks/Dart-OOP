import 'dart:io';

// Define an interface
abstract class Gradeable {
  void displayGrade();
}

// Parent class
class Student {
  String name;
  int age;

  Student(this.name, this.age);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}

// Child class inheriting from both Student and implementing Gradeable interface
class SchoolStudent extends Student implements Gradeable {
  int grade;

  SchoolStudent(String name, int age, this.grade) : super(name, age);

  // Override method from Gradeable interface
  @override
  void displayGrade() {
    print('Grade: $grade');
  }
}

void main() {
  // Instantiate an object of SchoolStudent
  var student = SchoolStudent('John Doe', 15, 85);

  // Display student info and grade
  student.displayInfo();
  student.displayGrade();

  // Method to demonstrate loop
  print('\nPrinting even numbers from 1 to 10:');
  printEvenNumbers();
}

// Method to demonstrate loop
void printEvenNumbers() {
  for (var i = 2; i <= 10; i += 2) {
    stdout.write('$i ');
  }
}
