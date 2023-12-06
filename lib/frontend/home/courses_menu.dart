import 'package:classmate/app_icons.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'course_page.dart';
import 'package:classmate/models/courseModel.dart';
import 'package:classmate/models/userModel.dart';

class CoursesMenu extends StatelessWidget {
  const CoursesMenu({super.key, required this.userData,});
  final Map<String, dynamic>? userData;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery.of(context).viewPadding;

    var courses = userData!['fields']['courses']['arrayValue']['values'];

    var courseList = [];

    for (var course in courses){
      var v = course['mapValue']['fields']; 
      Course course1 = new Course(
        professor: v['professor']['stringValue'],
        room: v['room']['stringValue'],
        classTitle: v['classTitle']['stringValue'],
        section: v['section']['stringValue']
      );
      courseList.add(course1);
    }

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
          child: ListView(children: [
            for (var course in courseList) CoursePreview(course: course)

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
        Container(
          width: width - 100,
          height: 57,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shadows: [
              BoxShadow(
                color: Color(0x33000000),
                blurRadius: 4,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: Stack(children: [
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CoursePage(course: course)));
              },
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
        ),
        Container(
          height: 20,
        ),
      ],
    );
  }
}
