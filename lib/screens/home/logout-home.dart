import 'package:flutter/material.dart';
import 'package:classmate/services/auth.dart';

class Logout extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClassMate Temporary Home'),
        backgroundColor: Color(0xFFFF4D4D),
        elevation: 0.0,
        actions: <Widget>[
          OutlinedButton(
              onPressed: () async {
                await _auth.signOut();
              },
              child: Text('Logout'),
          )
        ]
      )

    );
  }
}