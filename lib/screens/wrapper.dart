import 'package:classmate/screens/authenticate/authenticate.dart';
import 'package:classmate/screens/authenticate/login.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // return either Home or Login page
    return Scaffold(body: Authenticate());
  }
}
