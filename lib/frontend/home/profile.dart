import 'package:flutter/material.dart';
import 'package:classmate/models/userModel.dart';
import 'package:classmate/services/auth.dart';
import 'package:classmate/services/db.dart';

class Profile extends StatelessWidget {
  Profile({Key? key, required this.userData}) : super(key: key);
  final Map<String, dynamic>? userData;

  final AuthService _auth = AuthService();
  late final DatabaseService _db;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    // Get Data
    var profile = userData!['fields'];

    var name = profile['name']['stringValue'];
    var id = profile['id']['integerValue'];
    var role = profile['role']['stringValue'];
    var email = profile['email']['stringValue'];
    var role_output = profile['role']['stringValue'];

    _db = DatabaseService(uid: id.toString());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          margin: EdgeInsets.only(left: width * 0.025),
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 6.25,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.025,
            ),

            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: width * 0.075),
              title: Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            StudentInfo(
              width: width,
              title: '${role_output} id',
              content: id.toString(),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            StudentInfo(
              content: email,
              width: width,
              title: 'email',
            ),
            SizedBox(
              height: height * 0.025,
            ),
            SizedBox(
              height: height * 0.05,
            ),

            Divider(
              indent: width * 0.075,
              thickness: 1,
              color: Colors.grey,
              endIndent: width * 0.075,
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: width * 0.075),
              leading: Icon(
                Icons.logout_rounded,
                color: Colors.red,
              ),
              title: Text(
                "Log out",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class StudentInfo extends StatefulWidget {
  StudentInfo({
    Key? key,
    required this.width,
    required this.title,
    required this.content,
  });

  final double width;
  String title;
  String content;

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: widget.width * 0.075),
          child: Text(
            widget.title,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: widget.width * 0.075),
          child: Text(
            widget.content,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class DisplayUser extends StatelessWidget {
  const DisplayUser({Key? key, required this.user}) : super(key: key);
  final MyUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Text(
          'Name',
          //user.name,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
