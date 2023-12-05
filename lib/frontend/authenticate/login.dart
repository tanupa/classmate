import 'package:classmate/services/auth.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*
/// Dummy data
Address myAddress = Address(
    number: 123,
    street: 'Sesame St',
    city: 'San Jose',
    state: 'CA',
    zip: 95192);

Course course1 = Course(
    classTitle: 'CMPE 272',
    professor: 'Andrew H. Bond',
    section: 'Sec 03',
    room: 'E341');
Course course2 = Course(
    classTitle: 'CMPE 202',
    professor: 'Gopinath Vinodh',
    section: 'Sec 02',
    room: 'C310');
Course course3 = Course(
    classTitle: 'CMPE 101',
    professor: 'Alan Apple',
    section: 'Sec 01',
    room: 'R101');
Course course4 = Course(
    classTitle: 'CMPE 200',
    professor: 'Brett Borden',
    section: 'Sec 02',
    room: 'R200');
Course course5 = Course(
    classTitle: 'CMPE 080',
    professor: 'Christie Castro',
    section: 'Sec 03',
    room: 'C180');

List<Course> johnCourseList = [
  course1,
  course2,
  course3,
  course4,
];
List<Course> pamCourseList = [
  course2,
  course3,
  course4,
  course5,
];
List<Course> lizzCourseList = [course1, course2, course4, course5];

User johnUser = User(
    name: 'John Joe',
    id: '123456789',
    password: 'JohnPassword123',
    birthday: DateTime.utc(2000, 01, 01),
    gender: 'Male',
    email: 'johnjoe@sjsu.edu',
    phone: '4085551234',
    address: myAddress,
    enrolledCourses: johnCourseList);
User pamUser = User(
    name: 'Pam Paulson',
    id: '012345678',
    password: 'PamPassword123',
    birthday: DateTime.utc(1999, 12, 12),
    gender: 'Female',
    email: 'pam.paulson@sjsu.edu',
    phone: '4085552345',
    address: myAddress,
    enrolledCourses: pamCourseList);
User lizzUser = User(
    name: 'Lizz Leonard',
    id: '234567890',
    password: 'LizzPassword123',
    birthday: DateTime.utc(2001, 02, 02),
    gender: 'Female',
    email: 'lizzleonard2@sjsu.edu',
    phone: '4085553456',
    address: myAddress,
    enrolledCourses: lizzCourseList);
*/

/// Start of code
//TextEditingController idController = TextEditingController();
//TextEditingController passwordController = TextEditingController();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  /*
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   */

  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    final padding = MediaQuery.of(context).viewPadding;

    return Form(
      key: _formKey,
      child: Center(
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
            TextFormField(
              //controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Color(0xFFFF8A8A),
                filled: true,
                constraints: BoxConstraints(
                    maxWidth: 250, minWidth: width < 100 ? width : 100),
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.65),
                  // To be changed to white
                  fontSize: 16,
                  height: 1,
                ),
                hintText: 'Email',
              ),
              onChanged: (value) {
                setState(() => email = value);
              },
              validator: (value) =>
                  value == null || value.isEmpty ? 'Enter your email' : null,
            ),
            Container(
              height: 5,
            ),
            TextFormField(
              //controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Color(0xFFFF8A8A),
                filled: true,
                constraints: BoxConstraints(
                    maxWidth: 250, minWidth: width < 100 ? width : 100),
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.65),
                  // To be changed to white
                  fontSize: 16,
                  height: 1,
                ),
                hintText: 'Password',
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() => password = value);
              },
              validator: (value) =>
                  value == null || value.isEmpty ? 'Enter your password' : null,
            ),
            Container(
              height: 15,
            ),
            OutlinedButton(
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  dynamic result = await _auth.signIn(email, password);
                  if (result == null){
                    setState(() =>
                      error = 'Invalid credentials.'
                    );
                  }
                }
              },
            ),
            Container(height: 10),
            Text(
              error,
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
