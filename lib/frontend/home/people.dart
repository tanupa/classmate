import 'package:flutter/material.dart';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_service.dart';
import 'package:classmate/models/courseModel.dart';

final FirebaseService _firebaseService = FirebaseService();

class People extends StatelessWidget {
  const People({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _firebaseService.getPeopleData(course.classTitle),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator()); // Show a loading indicator
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        // Data has been successfully fetched
        List<Map<String, dynamic>> courseData = snapshot.data!;
        List<String> students = [];
        for (Map<String, dynamic> course in courseData) {
          String professor = course['professor_name'];
          Map<String, dynamic> studentsMap = course['students'];

          if (studentsMap != null) {
            students.addAll(studentsMap.values.cast<String>());
          }
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                height: 155,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 223,
                      height: 26,
                      child: Text(
                        '<Course>',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF010101),
                          fontSize: 26,
                          fontFamily: 'Amethysta',
                          fontWeight: FontWeight.w400,
                          height: 0.03,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 336,
                      height: 35,
                      child: Text(
                        'People',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Amethysta',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // People list
              Material(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      for (var student in students)
                        ListTile(
                          title: Text(
                            student,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0.06,
                              letterSpacing: -0.41,
                            ),
                          ),
                          subtitle: Text(
                            'student',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0.06,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
