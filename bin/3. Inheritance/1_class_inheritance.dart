// A word of caution: prefer composition over inheritance
import '2_multi‐level_hierarchy.dart';

enum Grades { A, B, C, D, F }

void main() {
  final eshmat = Person("Eshmat", "Toshmatov");
  final toshmat = Student("Toshmat", "Eshmatov");
  final gishmat = SchoolBandMember("G'ishmat", 'Teshayev');
  final ismat = StudentAthlete('Ismat', 'Usmanov');

  print(eshmat.fullName);
  print(toshmat.fullName);

  final mathGrade = Grades.A;
  toshmat.grades.add(mathGrade);
  print(toshmat.grades);

  final students = [toshmat, gishmat, ismat];

  // Checking an Object’s Type at Runtime
  print("Is gishmat an Object: ${gishmat is Object}");
  print("Is gishmat a Person: ${gishmat is Person}");
  print("Is gishmat a Student: ${gishmat is Student}");
  print("Is gishmat a SchoolBandMember: ${gishmat is SchoolBandMember}");
  print("Is gishmat an Athlete: ${gishmat is StudentAthlete}");
}

class Person {
  Person(this.name, this.surName);

  String name;
  String surName;

  String get fullName => "$name $surName";

  @override
  String toString() {
    return 'Person{name: $name, surName: $surName}';
  }
}

class Student extends Person {
  // Constructor like this
  Student(super.name, super.surName);

  // Or like this
  // Student(String name, String surName) : super(name, surName);

  var grades = <Grades>[];

  @override
  String get fullName => "$name, $surName";
}
