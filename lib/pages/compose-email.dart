/*
import 'package:flutter/material.dart';

class EmailDisplay extends StatelessWidget {
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
                left: 27,
                top: 141,
                child: Container(
                  width: 337,
                  height: 45,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 8,
                        top: 24,
                        child: SizedBox(
                          width: 215,
                          height: 21,
                          child: Text(
                            'From <Name>.',
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
                        left: 237,
                        top: 24,
                        child: SizedBox(
                          width: 92,
                          height: 21,
                          child: Text(
                            '<Date>',
                            textAlign: TextAlign.right,
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
                        top: 0,
                        child: SizedBox(
                          width: 321,
                          height: 21,
                          child: Text(
                            '<Email preview>...',
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
                left: 28,
                top: 409,
                child: Container(width: 337, height: 10),
              ),
              Positioned(
                left: 27,
                top: 196,
                child: Container(
                  width: 337,
                  height: 193,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 8,
                        top: 172,
                        child: SizedBox(
                          width: 215,
                          height: 21,
                          child: Text(
                            'From <Name>.',
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
                        left: 237,
                        top: 172,
                        child: SizedBox(
                          width: 92,
                          height: 21,
                          child: Text(
                            '<Date>',
                            textAlign: TextAlign.right,
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
                          height: 167,
                          child: Text(
                            '<Email contents>',
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
                left: 28,
                top: 399,
                child: Container(
                  width: 337,
                  height: 193,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 8,
                        top: 172,
                        child: SizedBox(
                          width: 215,
                          height: 21,
                          child: Text(
                            'From <Name>.',
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
                        left: 237,
                        top: 172,
                        child: SizedBox(
                          width: 92,
                          height: 21,
                          child: Text(
                            '<Date>',
                            textAlign: TextAlign.right,
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
                          height: 167,
                          child: Text(
                            '<Email contents>',
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
                left: 265,
                top: 808,
                child: SizedBox(
                  width: 92,
                  height: 21,
                  child: Text(
                    'Reply',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF38B3EA),
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
                left: 28,
                top: 186,
                child: Container(
                  width: 337,
                  height: 10,
                  padding: const EdgeInsets.only(left: 1),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 336,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF5C5C5C),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 389,
                child: Container(
                  width: 337,
                  height: 10,
                  padding: const EdgeInsets.only(left: 1),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 336,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF5C5C5C),
                            ),
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
                  padding: const EdgeInsets.only(
                    top: 53,
                    left: 18,
                    right: 326,
                    bottom: 18,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 49,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          ,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 111,
                child: SizedBox(
                  width: 336,
                  height: 30,
                  child: Text(
                    '<Subject>',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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
      ],
    );
  }
}

 */