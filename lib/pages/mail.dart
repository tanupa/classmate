import 'package:flutter/material.dart';

class Mail extends StatelessWidget {
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
                width: double.infinity,
                height: 102,
                padding: const EdgeInsets.only(top: 47, left: 28, right: 10),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 261,
                      height: 55,
                      child: Text(
                        'Mail',
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
                    const SizedBox(width: 46),
                    Container(
                      width: 48,
                      height: 48,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
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
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 662,
                padding: const EdgeInsets.only(bottom: 442),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 393,
                      height: 110,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 393,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                          ),
                          Container(
                            width: 68.35,
                            height: 67.69,
                            decoration: ShapeDecoration(
                              color: Color(0xFF504747),
                              shape: OvalBorder(),
                            ),
                          ),
                          SizedBox(
                            width: 100.77,
                            height: 22,
                            child: Text(
                              '<From>',
                              textAlign: TextAlign.right,
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
                            width: 151.15,
                            height: 22,
                            child: Text(
                              '<Subject>',
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
                            width: 266.56,
                            height: 16.92,
                            child: Text(
                              '<Preview>',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 9,
                                fontFamily: 'Amethysta',
                                fontWeight: FontWeight.w400,
                                height: 0.16,
                              ),
                            ),
                          ),
                          Container(
                            width: 15.38,
                            height: 15.23,
                            decoration: ShapeDecoration(
                              color: Color(0xFF46FA15),
                              shape: OvalBorder(
                                side: BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 49.55,
                            height: 22,
                            child: Text(
                              '<Date>',
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
                    Container(
                      width: 393,
                      height: 110,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 393,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                          ),
                          Container(
                            width: 68.35,
                            height: 67.69,
                            decoration: ShapeDecoration(
                              color: Color(0xFF504747),
                              shape: OvalBorder(),
                            ),
                          ),
                          SizedBox(
                            width: 100.77,
                            height: 22,
                            child: Text(
                              '<From>',
                              textAlign: TextAlign.right,
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
                            width: 151.15,
                            height: 22,
                            child: Text(
                              '<Subject>',
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
                            width: 266.56,
                            height: 16.92,
                            child: Text(
                              '<Preview>',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 9,
                                fontFamily: 'Amethysta',
                                fontWeight: FontWeight.w400,
                                height: 0.16,
                              ),
                            ),
                          ),
                          Container(
                            width: 15.38,
                            height: 15.23,
                            decoration: ShapeDecoration(
                              color: Color(0xFF46FA15),
                              shape: OvalBorder(
                                side: BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 49.55,
                            height: 22,
                            child: Text(
                              '<Date>',
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