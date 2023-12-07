import 'package:classmate/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:classmate/models/courseModel.dart';
import 'people.dart';
import 'assignments.dart';
import 'grades.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key, required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery.of(context).viewPadding;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: 222,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFFF4D4D)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: padding.top + 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(AppIcons.back_button, color: Colors.white, size: 40),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Container(
                  width: width,
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 35,
                    ),
                    SizedBox(
                      width: (width - 60) * (2 / 3),
                      height: 35,
                      child: Text(
                        course.classTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: (width - 60) * (1 / 3),
                      height: 35,
                      child: Text(
                        course.section,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 35,
                    ),
                  ],
                ),
                Container(
                  width: width,
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 28,
                    ),
                    SizedBox(
                      width: (width - 60) * (2 / 3),
                      height: 28,
                      child: Text(
                        course.professor,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: (width - 60) * (1 / 3),
                      height: 28,
                      child: Text(
                        course.room,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 28,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => People()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('People', style: TextStyle(fontSize: 18)),
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                height: 1,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 4),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Assignments(courseId: this.course.toString())));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Assignments', style: TextStyle(fontSize: 18)),
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                height: 1,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 4),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Grades()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Grades', style: TextStyle(fontSize: 18)),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
