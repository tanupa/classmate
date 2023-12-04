import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:classmate/models/courseModel.dart';

class DatabaseAccess {
  //const DatabaseAccess({required this.uid});
  //final String uid;

  Stream<QuerySnapshot> get classData {
    return FirebaseFirestore.instance.collection('classes').snapshots();
  }

  List<Course> _courseListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc){
      return Course(
        title: doc.get('title') ?? '',
        professor: doc.get('professor') ?? '',
        section: doc.get('section') ?? '',
        room: doc.get('room') ?? '',
        assignments: doc.get('assignments') ?? [],
        students: doc.get('students') ?? [],
      );
    }).toList();
  }
}