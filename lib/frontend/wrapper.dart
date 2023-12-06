import 'package:classmate/frontend//authenticate/authenticate.dart';
import 'package:classmate/frontend/home/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:classmate/models/userModel.dart';// Add logout button; temporary usage
import 'home/people.dart';

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

/*
class WrapperWithPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: People(), // Use the People widget here
    );
  }
}
 */
