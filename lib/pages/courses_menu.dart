import 'package:classmate/app_icons.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Course {
  String classTitle;
  String professor;
  String section;
  String room;

  Course(
      {required this.classTitle,
      required this.professor,
      required this.section,
      required this.room});
}

class CoursesMenu extends StatelessWidget {
  const CoursesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery.of(context).viewPadding;

    // TO DO: Replace with data from db.
    Course course1 = Course(
        classTitle: 'CMPE 272',
        professor: 'Andrew H. Bond',
        section: 'Sec 03',
        room: 'E341');
    Course course2 = Course(
        classTitle: 'CMPE 202',
        professor: 'Gopinath Vinodh',
        section: 'Sec 02',
        room: 'C310');

    List<Course> courseList = [
      course1,
      course2,
    ];

    return Column(
      children: [
        /// Title: Courses
        Container(
          padding: EdgeInsets.only(top: padding.top + 20, bottom: 10),
          child: Text(
            'Courses',
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 6.25,
            ),
          ),
        ),

        /// Course List
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          width: width,
          height: 200,
          //height - (padding.top + padding.bottom + 62),
          child: ListView(children: [
            for (var course in courseList) CoursePreview(course: course),
          ]),
        ),
      ],
    );
  }
}

class CoursePreview extends StatelessWidget {
  const CoursePreview({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery.of(context).viewPadding;

    return Column(
      children: [
        Stack(children: [
          Container(
            width: width - 100,
            height: 57,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              shadows: [
                BoxShadow(
                  color: Color(0x33000000),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
          Positioned(
            left: 13,
            top: 10,
            child: Text(
              course.classTitle,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 10,
            child: Text(
              course.professor,
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            right: 13,
            top: 10,
            child: Text(
              course.section,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 10,
            child: Text(
              course.room,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 12,
              ),
            ),
          ),
        ]),
        Container(
          height: 20,
        ),
      ],
    );
  }
}
