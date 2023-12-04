import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class CourseList extends StatefulWidget {
  const CourseList({super.key});

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    final courses = Provider.of<QuerySnapshot>(context);
    for (var doc in courses.docs) {
      print(doc.data());
    }

    return const Placeholder();
  }
}
