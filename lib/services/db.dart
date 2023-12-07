import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference classesCollection = FirebaseFirestore.instance.collection('classes');
  final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');

  Future<void> updateClassData(String classId, String professorName, List<Student> students, List<Assignment> assignments) async {
    return await classesCollection.doc(classId).set({
      'classId': classId,
      'professorName': professorName,
      'students': students.map((student) => student.toMap()).toList(),
      'assignments': assignments.map((assignment) => assignment.toMap()).toList(),
    });
  }

  Future<void> updateUserAssignment(String userId, String assignmentId, int points, String type) async {
    return await usersCollection.doc(userId).collection('assignments').doc(assignmentId).set({
      'assignmentId': assignmentId,
      'points': points,
      'type': type,
    });
  }

  Future<ClassData> getClassData(String classId) async {
    DocumentSnapshot classSnapshot = await classesCollection.doc(classId).get();

    return ClassData(
      classId: classSnapshot['classId'],
      professorName: classSnapshot['professorName'],
      students: List<Student>.from(classSnapshot['students'].map((student) {
        return Student(id: student['id'], name: student['name']);
      })),
      assignments: List<Assignment>.from(classSnapshot['assignments'].map((assignment) {
        return Assignment(
          assignmentId: assignment['assignmentId'],
          assignmentName: assignment['assignmentName'],
          points: assignment['points'],
          type: assignment['type'],
        );
      })),
    );
  }

  Future<UserData> getUserData() async {
    DocumentSnapshot userSnapshot = await usersCollection.doc(uid).get();

    return UserData(
      userId: userSnapshot['userId'],
    );
  }
}

class Student {
  final String id;
  final String name;

  Student({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class Assignment {
  final String assignmentId;
  final String assignmentName;
  final int points;
  final String type;

  Assignment({
    required this.assignmentId,
    required this.assignmentName,
    required this.points,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'assignmentId': assignmentId,
      'assignmentName': assignmentName,
      'points': points,
      'type': type,
    };
  }
}

class ClassData {
  final String classId;
  final String professorName;
  final List<Student> students;
  final List<Assignment> assignments;

  ClassData({
    required this.classId,
    required this.professorName,
    required this.students,
    required this.assignments,
  });
}

class UserData {
  final String userId;

  UserData({
    required this.userId,
  });
}
