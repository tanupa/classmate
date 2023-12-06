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
  /*
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery.of(context).viewPadding;

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
                "John Doe",
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
              title: "Student ID",
              content: "XXXXXX",
            ),
            SizedBox(
              height: height * 0.025,
            ),
            StudentInfo(
              content: "BS Computer Science",
              width: width,
              title: "Course",
            ),
            SizedBox(
              height: height * 0.025,
            ),
            StudentInfo(
              content: "Spring 2025",
              width: width,
              title: "Graduation Date",
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

*/ 


/*
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 693,
                child: Container(
                  height: 71,
                  padding: const EdgeInsets.only(right: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 385,
                        height: 71,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 385,
                                height: 71,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6000000238418579),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 78.28,
                              top: 19.88,
                              child: SizedBox(
                                width: 259.23,
                                height: 32.66,
                                child: Text(
                                  'Log out',
                                  style: TextStyle(
                                    color: Color(0xFF191919),
                                    fontSize: 14,
                                    fontFamily: 'Amethysta',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 26.95,
                              top: 19.88,
                              child: Container(
                                width: 29.52,
                                height: 32.66,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [
                                    ,
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 764,
                child: Container(
                  width: 393,
                  padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 46,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 24,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 24,
                                              height: 24,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Stack(children: [
                                                  ,
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 6),
                              SizedBox(
                                width: double.infinity,
                                height: 16,
                                child: Text(
                                  'Courses',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF474B51),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 44,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                child: Stack(children: [
                                    ,
                                    ]),
                              ),
                              const SizedBox(height: 7),
                              SizedBox(
                                width: double.infinity,
                                height: 18,
                                child: Text(
                                  'Calendar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF474B51),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 44,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 18,
                                height: 22,
                                child: Stack(children: [
                                    ,
                                    ]),
                              ),
                              const SizedBox(height: 7),
                              SizedBox(
                                width: double.infinity,
                                height: 18,
                                child: Text(
                                  'Tasks',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF474B51),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 36,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 22,
                                height: 18,
                                child: Stack(children: [
                                    ,
                                    ]),
                              ),
                              const SizedBox(height: 7),
                              SizedBox(
                                width: double.infinity,
                                height: 16,
                                child: Text(
                                  'Mail',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF474B51),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 46,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [
                                    ,
                                    ]),
                              ),
                              const SizedBox(height: 6),
                              SizedBox(
                                width: double.infinity,
                                height: 16,
                                child: Text(
                                  'Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF38B3EA),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 47,
                child: SizedBox(
                  width: 336,
                  height: 55,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Amethysta',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 6.25,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -0,
                top: 88,
                child: Container(
                  width: 393,
                  height: 616,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 26.87,
                        child: Container(
                          width: 393,
                          height: 589.13,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            shadows: [
                              BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136.17,
                        top: 461.42,
                        child: SizedBox(
                          width: 229.82,
                          height: 65.11,
                          child: Text(
                            '1 Washing Sq.                             San Jose, CA 95112',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 13,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 461.42,
                        child: SizedBox(
                          width: 109.17,
                          height: 20.67,
                          child: Text(
                            'Address:',
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 11,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136.17,
                        top: 430.42,
                        child: SizedBox(
                          width: 229.82,
                          height: 20.67,
                          child: Text(
                            '(xxx) xxx - xxxx',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 13,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 430.42,
                        child: SizedBox(
                          width: 109.17,
                          height: 20.67,
                          child: Text(
                            'Contact #: ',
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 11,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136.17,
                        top: 399.41,
                        child: SizedBox(
                          width: 229.82,
                          height: 20.67,
                          child: Text(
                            '<email>',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 13,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 399.41,
                        child: SizedBox(
                          width: 109.17,
                          height: 20.67,
                          child: Text(
                            'Email:',
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 11,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 76.99,
                        top: 154,
                        child: SizedBox(
                          width: 289.58,
                          height: 20.67,
                          child: Text(
                            '<Major/Grade>',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 13,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136.75,
                        top: 122.99,
                        child: SizedBox(
                          width: 229.82,
                          height: 20.67,
                          child: Text(
                            'xxxxxxxxx',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 13,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27.58,
                        top: 122.99,
                        child: SizedBox(
                          width: 109.17,
                          height: 20.67,
                          child: Text(
                            'Student ID:',
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 11,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137.17,
                        top: 292.42,
                        child: SizedBox(
                          width: 229.82,
                          height: 20.67,
                          child: Text(
                            '<Gender>',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 13,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28,
                        top: 292.42,
                        child: SizedBox(
                          width: 109.17,
                          height: 20.67,
                          child: Text(
                            'Gender: ',
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 11,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 250.93,
                        top: 261.41,
                        child: SizedBox(
                          width: 116.06,
                          height: 20.67,
                          child: Text(
                            '<Date>',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 13,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28,
                        top: 261.41,
                        child: SizedBox(
                          width: 109.17,
                          height: 20.67,
                          child: Text(
                            'Birth Date:',
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 11,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27.58,
                        top: 58.91,
                        child: SizedBox(
                          width: 113.76,
                          height: 20.67,
                          child: Text(
                            '<Name>',
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 16,
                              fontFamily: 'Amethysta',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 274.64,
                        top: 0,
                        child: Container(
                          width: 91.93,
                          height: 82.68,
                          decoration: ShapeDecoration(
                            color: Color(0xFF1F1818),
                            shape: OvalBorder(
                              side: BorderSide(width: 3, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 356,
                        child: Container(
                          width: 338.99,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFF3F3F3),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28,
                        top: 218,
                        child: Container(
                          width: 338.99,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFF3F3F3),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

 */
