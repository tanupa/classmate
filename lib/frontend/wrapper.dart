// Import necessary packages and files
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:classmate/models/userModel.dart';
import 'package:classmate/services/auth.dart';
import 'authenticate/authenticate.dart';
import 'home/profile.dart';
import 'home/people.dart';
import 'package:classmate/services/userEndpoint.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);

    final AuthService _auth = AuthService();

    if (user == null) {
      print('No user');
      return Scaffold(body: Authenticate());
    } else {
      print(user.uid);

      return FutureBuilder<Map<String, dynamic>?>(
        future: UserAPI.fetchCurrentUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError || snapshot.data == null) {
            return Text('Error fetching user data');
          } else {
            return Scaffold(
              body: Profile(userData: snapshot.data),
            );
          }
        },
      );
    }
  }
}

class WrapperWithPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: People(),
    );
  }
}
