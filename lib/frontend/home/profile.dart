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

    var role_output;//had to hard code due to dart not having native capitalize()
    var second_output1;//Where Program would be if Student
    var second_output2;
    var third_output1;//Where Graduation Date would be if Student
    var third_output2;
    
    if(role == "professor"){
      role_output = "Professor";

      second_output1 = "School";
      second_output2 = profile['school']['stringValue'];

      third_output1 = "Clubs";
      third_output2 = "Football";
    }
    else if(role == "student"){
      role_output = "Student";

      second_output1 = "Program";
      second_output2 = "BS Computer Science";

      third_output1 = "Graduation Date";
      third_output2 = "Spring 2025";
    }

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
              trailing: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            StudentInfo(
              width: width,
              title: '${role_output} ID',//userData role
              content: id,//userData ID
            ),
            SizedBox(
              height: height * 0.025,
            ),
            StudentInfo(
              content: second_output2,//second_output
              width: width,
              title: second_output1,
            ),
            SizedBox(
              height: height * 0.025,
            ),
            StudentInfo(
              content: third_output2,//third_output
              width: width,
              title: third_output1,
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
