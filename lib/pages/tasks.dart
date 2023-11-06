import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          padding: const EdgeInsets.only(top: 47, bottom: 30),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 336,
                height: 55,
                child: Text(
                  'Tasks',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Amethysta',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: 6.25,
                  ),
                ),
              ),
              Container(
                width: 385,
                height: 662,
                padding: const EdgeInsets.only(left: 5, right: 3.91, bottom: 489),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 376.09,
                      height: 80,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 376.09,
                            height: 80,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Color(0xFFDEDEDE),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 273.08,
                            height: 24.62,
                            child: Text(
                              '<Title>',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 12,
                                fontFamily: 'Amethysta',
                                fontWeight: FontWeight.w400,
                                height: 0.09,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 178.24,
                            height: 16,
                            child: Text(
                              '<Course>',
                              style: TextStyle(
                                color: Color(0xFF686868),
                                fontSize: 10,
                                fontFamily: 'Amethysta',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 170.06,
                            height: 16,
                            child: Text(
                              'Due <Date>',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF686868),
                                fontSize: 10,
                                fontFamily: 'Amethysta',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 13),
                    Container(
                      width: 376.09,
                      height: 80,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 376.09,
                            height: 80,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Color(0xFFDEDEDE),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 273.08,
                            height: 24.62,
                            child: Text(
                              '<Title>',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 12,
                                fontFamily: 'Amethysta',
                                fontWeight: FontWeight.w400,
                                height: 0.09,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 178.24,
                            height: 16,
                            child: Text(
                              '<Course>',
                              style: TextStyle(
                                color: Color(0xFF686868),
                                fontSize: 10,
                                fontFamily: 'Amethysta',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 170.06,
                            height: 16,
                            child: Text(
                              'Due <Date>',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF686868),
                                fontSize: 10,
                                fontFamily: 'Amethysta',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 46,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 24,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 24,
                                            height: 24,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Stack(children: [
                                                ,
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            SizedBox(
                              width: double.infinity,
                              height: 16,
                              child: Text(
                                'Courses',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF474B51),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 44,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 22,
                              height: 22,
                              child: Stack(children: [
                                  ,
                                  ]),
                            ),
                            const SizedBox(height: 7),
                            SizedBox(
                              width: double.infinity,
                              height: 18,
                              child: Text(
                                'Calendar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF474B51),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 44,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 18,
                              height: 22,
                              child: Stack(children: [
                                  ,
                                  ]),
                            ),
                            const SizedBox(height: 7),
                            SizedBox(
                              width: double.infinity,
                              height: 18,
                              child: Text(
                                'Tasks',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF38B3EA),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 36,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 22,
                              height: 18,
                              child: Stack(children: [
                                  ,
                                  ]),
                            ),
                            const SizedBox(height: 7),
                            SizedBox(
                              width: double.infinity,
                              height: 16,
                              child: Text(
                                'Mail',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF474B51),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(children: [
                                  ,
                                  ]),
                            ),
                            const SizedBox(height: 6),
                            SizedBox(
                              width: double.infinity,
                              height: 16,
                              child: Text(
                                'Profile',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF474B51),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}