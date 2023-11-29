/*
import 'package:flutter/material.dart';

class AnnouncementDisplay extends StatelessWidget {
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
                top: 151,
                child: Container(
                  width: 337,
                  height: 193,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 337,
                          height: 193,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFCCCC),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8,
                        top: 172,
                        child: SizedBox(
                          width: 321,
                          height: 21,
                          child: Text(
                            'Posted on <Date>.',
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
                left: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 53,
                    left: 18,
                    right: 85,
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
                      const SizedBox(width: 18),
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
                    '<Announcement Title>',
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