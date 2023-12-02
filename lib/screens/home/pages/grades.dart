/*
import 'package:flutter/material.dart';

class Grades extends StatelessWidget {
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
                  height: 91,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 36,
                        child: Container(
                          width: 337,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(width: 337, height: 24),
                              ),
                              Positioned(
                                left: 5,
                                top: -0,
                                child: SizedBox(
                                  width: 195,
                                  height: 25,
                                  child: Text(
                                    '<Title>',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: -0,
                                child: SizedBox(
                                  width: 132,
                                  height: 25,
                                  child: Text(
                                    '<Score>',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
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
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 337,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.only(
                              left: BorderSide(color: Color(0xFF474B51)),
                              top: BorderSide(color: Color(0xFF474B51)),
                              right: BorderSide(color: Color(0xFF474B51)),
                              bottom: BorderSide(width: 1, color: Color(0xFF474B51)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 3,
                        child: SizedBox(
                          width: 327,
                          height: 30,
                          child: Text(
                            '<Type>',
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
                      ),
                      Positioned(
                        left: 0,
                        top: 66,
                        child: Container(
                          width: 337,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 337,
                                  height: 24,
                                  decoration: BoxDecoration(color: Color(0xFFFFCCCC)),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: -0,
                                child: SizedBox(
                                  width: 195,
                                  height: 25,
                                  child: Text(
                                    '<Title>',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: -0,
                                child: SizedBox(
                                  width: 132,
                                  height: 25,
                                  child: Text(
                                    '<Score>',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: -0.41,
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
              ),
              Positioned(
                left: 28,
                top: 286,
                child: Container(
                  width: 337,
                  height: 91,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 36,
                        child: Container(
                          width: 337,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(width: 337, height: 24),
                              ),
                              Positioned(
                                left: 5,
                                top: -0,
                                child: SizedBox(
                                  width: 195,
                                  height: 25,
                                  child: Text(
                                    '<Title>',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: -0,
                                child: SizedBox(
                                  width: 132,
                                  height: 25,
                                  child: Text(
                                    '<Score>',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
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
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 337,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.only(
                              left: BorderSide(color: Color(0xFF474B51)),
                              top: BorderSide(color: Color(0xFF474B51)),
                              right: BorderSide(color: Color(0xFF474B51)),
                              bottom: BorderSide(width: 1, color: Color(0xFF474B51)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 3,
                        child: SizedBox(
                          width: 327,
                          height: 30,
                          child: Text(
                            '<Type>',
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
                      ),
                      Positioned(
                        left: 0,
                        top: 66,
                        child: Container(
                          width: 337,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 337,
                                  height: 24,
                                  decoration: BoxDecoration(color: Color(0xFFFFCCCC)),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: -0,
                                child: SizedBox(
                                  width: 195,
                                  height: 25,
                                  child: Text(
                                    '<Title>',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: -0,
                                child: SizedBox(
                                  width: 132,
                                  height: 25,
                                  child: Text(
                                    '<Score>',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: -0.41,
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
              ),
              Positioned(
                left: 28,
                top: 688,
                child: Container(
                  width: 337,
                  height: 130,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 36,
                        child: Container(
                          width: 337,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(width: 337, height: 24),
                              ),
                              Positioned(
                                left: 5,
                                top: -0,
                                child: SizedBox(
                                  width: 195,
                                  height: 25,
                                  child: Text(
                                    '<Type>',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: -0,
                                child: SizedBox(
                                  width: 132,
                                  height: 25,
                                  child: Text(
                                    '<>%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
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
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 337,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.only(
                              left: BorderSide(color: Color(0xFF474B51)),
                              top: BorderSide(color: Color(0xFF474B51)),
                              right: BorderSide(color: Color(0xFF474B51)),
                              bottom: BorderSide(width: 1, color: Color(0xFF474B51)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 3,
                        child: SizedBox(
                          width: 327,
                          height: 30,
                          child: Text(
                            'Overall',
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
                      ),
                      Positioned(
                        left: 0,
                        top: 66,
                        child: Container(
                          width: 337,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(width: 337, height: 24),
                              ),
                              Positioned(
                                left: 5,
                                top: -0,
                                child: SizedBox(
                                  width: 195,
                                  height: 25,
                                  child: Text(
                                    '<Type>',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: -0,
                                child: SizedBox(
                                  width: 132,
                                  height: 25,
                                  child: Text(
                                    '<>%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
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
                        left: 0,
                        top: 96,
                        child: Container(
                          width: 337,
                          height: 34,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 337,
                                  height: 34,
                                  decoration: BoxDecoration(color: Color(0xFFFFCCCC)),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 4,
                                child: SizedBox(
                                  width: 195,
                                  height: 25,
                                  child: Text(
                                    '<A->',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.04,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: 4,
                                child: SizedBox(
                                  width: 132,
                                  height: 25,
                                  child: Text(
                                    '<>%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'Amethysta',
                                      fontWeight: FontWeight.w400,
                                      height: 0.04,
                                      letterSpacing: -0.41,
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
                            'Grades',
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

 */