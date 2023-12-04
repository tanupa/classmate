import 'userModel.dart';

class Course {
  String title;
  String professor;
  String section;
  String room;
  List<Assignment> assignments;
  List<MyUser> students;

  Course({
    required this.title,
    required this.professor,
    required this.section,
    required this.room,
    required this.assignments,
    required this.students,
  });
}

class Assignment {
  String assignment;
  String description;
  int points;
  String type;

  Assignment({
    required this.assignment,
    required this.description,
    required this.points,
    required this.type,
  });
}
