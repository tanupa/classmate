import 'package:flutter/material.dart';

class Assignments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 28,
                top: 160,
                child: Container(
                  height: 82,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 337,
                        height: 30,
                        child: Text(
                          'Upcoming',
                          textAlign: TextAlign.center,
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
                      Container(
                        width: 337,
                        height: 52,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 337,
                              height: 52,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF474B51)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 321,
                              height: 21,
                              child: Text(
                                '<Title>',
                                style: TextStyle(
                                  color: Color(0xFF2A2A2A),
                                  fontSize: 20,
                                  fontFamily: 'Amethysta',
                                  fontWeight: FontWeight.w400,
                                  height: 0.06,
                                  letterSpacing: -0.41,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 321,
                              height: 21,
                              child: Text(
                                'Due <Date>',
                                style: TextStyle(
                                  color: Color(0xFF5C5C5C),
                                  fontSize: 14,
                                  fontFamily: 'Amethysta',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
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
              ),
              Positioned(
                left: 28,
                top: 424,
                child: Container(
                  height: 82,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 337,
                        height: 30,
                        child: Text(
                          'Past',
                          textAlign: TextAlign.center,
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
                      Container(
                        width: 337,
                        height: 52,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 337,
                              height: 52,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF474B51)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 321,
                              height: 21,
                              child: Text(
                                '<Title>',
                                style: TextStyle(
                                  color: Color(0xFF2A2A2A),
                                  fontSize: 20,
                                  fontFamily: 'Amethysta',
                                  fontWeight: FontWeight.w400,
                                  height: 0.06,
                                  letterSpacing: -0.41,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 321,
                              height: 21,
                              child: Text(
                                'Submitted <Date>',
                                style: TextStyle(
                                  color: Color(0xFF5C5C5C),
                                  fontSize: 14,
                                  fontFamily: 'Amethysta',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
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
              ),
              Positioned(
                left: 28,
                top: 292,
                child: Container(
                  height: 82,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 337,
                        height: 30,
                        child: Text(
                          'Overdue',
                          textAlign: TextAlign.center,
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
                      Container(
                        width: 337,
                        height: 52,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 337,
                              height: 52,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF474B51)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 321,
                              height: 21,
                              child: Text(
                                '<Title>',
                                style: TextStyle(
                                  color: Color(0xFF2A2A2A),
                                  fontSize: 20,
                                  fontFamily: 'Amethysta',
                                  fontWeight: FontWeight.w400,
                                  height: 0.06,
                                  letterSpacing: -0.41,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 321,
                              height: 21,
                              child: Text(
                                'Due <Date>',
                                style: TextStyle(
                                  color: Color(0xFF5C5C5C),
                                  fontSize: 14,
                                  fontFamily: 'Amethysta',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
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
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 393,
                  height: 155,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 85,
                        top: 60,
                        child: SizedBox(
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
                      ),
                      Positioned(
                        left: 18,
                        top: 53,
                        child: Container(
                          width: 49,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                              ,
                              ]),
                        ),
                      ),
                      Positioned(
                        left: 28,
                        top: 111,
                        child: SizedBox(
                          width: 336,
                          height: 35,
                          child: Text(
                            'Assignments',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
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
    );
  }
}