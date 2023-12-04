import 'package:classmate/screens/authenticate/authenticate.dart';
import 'package:classmate/screens/home/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:classmate/models/userModel.dart';

import 'home/logout-home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);

    // return either NavBar or Login page
    if (user == null) {
      print('No user');
      return Scaffold(body: Authenticate());
    } else {
      print(user.uid);
      return Scaffold(body: NavBar());
      //return Scaffold(body: Logout());
    }
  }
}
