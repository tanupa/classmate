import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery
        .of(context)
        .viewPadding;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ClassMate',
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontFamily: 'Amethysta',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 250,
            maxHeight: 50,
          ),
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xFFFF8A8A),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  // To be changed to white
                  fontSize: 16,
                  fontFamily: 'Amethysta',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
                hintText: 'Student ID',
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 250,
            maxHeight: 50,
          ),
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xFFFF8A8A),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  // To be changed to white
                  fontSize: 16,
                  fontFamily: 'Amethysta',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
                hintText: 'Password',
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 100,
            maxHeight: 50,
          ),
          child: Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: TextButton(
              onPressed: () {
                debugPrint('Received click');
              },
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Amethysta',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ],

    );
  }
}