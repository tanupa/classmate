import 'package:flutter/material.dart';

class AssignmentDisplay extends StatelessWidget {
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
                  width: 337,
                  height: 149,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 337,
                          height: 149,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFCCCC),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8,
                        top: 128,
                        child: SizedBox(
                          width: 321,
                          height: 21,
                          child: Text(
                            '<Submitted on/Due> <Date>',
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
                      ),
                      Positioned(
                        left: 8,
                        top: 5,
                        child: SizedBox(
                          width: 321,
                          height: 120,
                          child: Text(
                            '<Description here>',
                            style: TextStyle(
                              color: Color(0xFF2A2A2A),
                              fontSize: 14,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0.11,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 321,
                child: SizedBox(
                  width: 321,
                  height: 21,
                  child: Text(
                    'View submission',
                    style: TextStyle(
                      color: Color(0xFF38B3EA),
                      fontSize: 14,
                      fontFamily: 'Amethysta',
                      fontWeight: FontWeight.w400,
                      textDecoration: TextDecoration.underline,
                      height: 0.11,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 758,
                child: Container(
                  padding: const EdgeInsets.only(top: 19, left: 14, bottom: 9),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    border: Border.only(
                      left: BorderSide(),
                      top: BorderSide(width: 1),
                      right: BorderSide(),
                      bottom: BorderSide(),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 202,
                        height: 22,
                        child: Text(
                          'Score',
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
                      SizedBox(
                        width: 121,
                        height: 22,
                        child: Text(
                          '<Score>',
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
                            '<Assignment>',
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