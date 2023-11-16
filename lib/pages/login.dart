import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:classmate/navbar.dart';

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

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ClassMate',
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
              height: 0,
            ),
          ),
          Container(
            height: 15,
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
                    width: 8,
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
                    height: 1,
                  ),
                  hintText: 'Student ID',
                ),
              ),
            ),
          ),
          Container(
            height: 5,
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
                    width: 8,
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
                    height: 1,
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
          ),
          Container(
            height: 15,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 100,
              maxHeight: 45,
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
                  _navigateToHome(context);
                },
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }

  void _navigateToHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavBar()));
  }
}