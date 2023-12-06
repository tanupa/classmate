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
                      MaterialPageRoute(builder: (context) => Assignments()));
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

/*
class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          padding: const EdgeInsets.only(bottom: 30),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 393,
                height: 222,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Color(0xFFFF4D4D)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 49,
                      height: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                          ,
                          ]),
                    ),
                    SizedBox(
                      width: 223,
                      height: 35,
                      child: Text(
                        '<Title>',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'Amethysta',
                          fontWeight: FontWeight.w400,
                          height: 0.03,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 28,
                      child: Text(
                        '<Section>',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Amethysta',
                          fontWeight: FontWeight.w400,
                          height: 0.06,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 28,
                      child: Text(
                        '<Prof>',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Amethysta',
                          fontWeight: FontWeight.w400,
                          height: 0.06,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 28,
                      child: Text(
                        '<Room>',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
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
              Container(
                width: double.infinity,
                height: 600,
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: 260,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 55,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 14,
                        right: 14,
                        bottom: 17,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF474B51)),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 325,
                            height: 22,
                            child: Text(
                              'Syllabus',
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
                    Container(
                      width: double.infinity,
                      height: 55,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 14,
                        right: 14,
                        bottom: 17,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        border: Border.only(
                          left: BorderSide(color: Color(0x7F474B51)),
                          top: BorderSide(color: Color(0x7F474B51)),
                          right: BorderSide(color: Color(0x7F474B51)),
                          bottom: BorderSide(width: 1, color: Color(0x7F474B51)),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 325,
                            height: 22,
                            child: Text(
                              'Announcements',
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
                    Container(
                      width: double.infinity,
                      height: 55,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 14,
                        right: 14,
                        bottom: 17,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        border: Border.only(
                          left: BorderSide(color: Color(0x7F474B51)),
                          top: BorderSide(color: Color(0x7F474B51)),
                          right: BorderSide(color: Color(0x7F474B51)),
                          bottom: BorderSide(width: 1, color: Color(0x7F474B51)),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 325,
                            height: 22,
                            child: Text(
                              'Assignments',
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
                    Container(
                      width: double.infinity,
                      height: 55,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 14,
                        right: 14,
                        bottom: 17,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        border: Border.only(
                          left: BorderSide(color: Color(0x7F474B51)),
                          top: BorderSide(color: Color(0x7F474B51)),
                          right: BorderSide(color: Color(0x7F474B51)),
                          bottom: BorderSide(width: 1, color: Color(0x7F474B51)),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 325,
                            height: 22,
                            child: Text(
                              'Grades',
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
                    Container(
                      width: double.infinity,
                      height: 55,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 14,
                        right: 14,
                        bottom: 17,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        border: Border.only(
                          left: BorderSide(color: Color(0x7F474B51)),
                          top: BorderSide(color: Color(0x7F474B51)),
                          right: BorderSide(color: Color(0x7F474B51)),
                          bottom: BorderSide(width: 1, color: Color(0x7F474B51)),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 325,
                            height: 22,
                            child: Text(
                              'Files',
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
                    Container(
                      width: double.infinity,
                      height: 55,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 14,
                        right: 14,
                        bottom: 17,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 325,
                            height: 22,
                            child: Text(
                              'People',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

 */
