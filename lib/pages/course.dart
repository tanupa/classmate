/*
import 'package:flutter/material.dart';

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