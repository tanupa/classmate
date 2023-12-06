import 'package:flutter/material.dart';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_service.dart';
import 'package:classmate/models/courseModel.dart';
import 'package:classmate/app_icons.dart';

final FirebaseService _firebaseService = FirebaseService();

class People extends StatelessWidget {
  const People({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery.of(context).viewPadding;

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
        String professor = "";
        for (Map<String, dynamic> course in courseData) {
          professor = course['professor_name'];
          Map<String, dynamic> studentsMap = course['students'];

          if (studentsMap != null) {
            students.addAll(studentsMap.values.cast<String>());
          }
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with back button and title
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  // Back button
                  Material(
                    child: IconButton(
                      color: Colors.green,
                      icon: Icon(AppIcons.back_button, color: Colors.black, size: 40),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  // People title
                  SizedBox(
                    width: width-100,
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
                    ListTile(
                      title: Text(
                        professor,
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
                        'professor',
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
        );
      },
    );
  }
}