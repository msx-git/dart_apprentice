
import '1_class_inheritance.dart';

class SchoolBandMember extends Student {
  SchoolBandMember(super.name, super.surName);

  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(super.name, super.surName);

  bool get isEligible => grades.every((grade) => grade != Grades.F);
}
