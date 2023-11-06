import 'package:flutter/material.dart';

class People extends StatelessWidget {
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
                height: 155,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
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
                    SizedBox(
                      width: 336,
                      height: 35,
                      child: Text(
                        'People',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Amethysta',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 667,
                padding: const EdgeInsets.only(bottom: 587),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 230,
                            height: 22,
                            child: Text(
                              '<Name>',
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
                            width: 135,
                            height: 22,
                            child: Text(
                              '<Role>',
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
                    Container(
                      width: double.infinity,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 230,
                            height: 22,
                            child: Text(
                              '<Name>',
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
                            width: 135,
                            height: 22,
                            child: Text(
                              '<Role>',
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