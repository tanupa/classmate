import 'package:flutter/material.dart';
import 'package:classmate/models/userModel.dart';
import 'package:classmate/services/auth.dart';

class Profile extends StatelessWidget {
  Profile({super.key, required this.userData});
  final Map<String, dynamic>? userData;

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery.of(context).viewPadding;

    //Get Data
    var profile = userData!['fields'];

    var name = profile['name']['stringValue'];
    var id = profile['id']['integerValue'];
    var role = profile['role']['stringValue'];
    var email = profile['email']['stringValue'];
    var role_output = profile['role']['stringValue'];

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

            /// Title

            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: width * 0.075),
              title: Text(
                name,//userData name
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
              title: '${role_output} id',//userData role
              content: id,//userData ID
            ),
            SizedBox(
              height: height * 0.025,
            ),
            StudentInfo(
              content: email,//second_output
              width: width,
              title: 'email',
            ),
            SizedBox(
              height: height * 0.025,
            ),
            // DisplayUser(user: user),
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
              onTap: () async{
                await _auth.signOut();
              }
            )
          ],
        ),
      ),
    );
  }
}

class StudentInfo extends StatefulWidget {
  StudentInfo({
    super.key,
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
  const DisplayUser({super.key, required this.user});
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
