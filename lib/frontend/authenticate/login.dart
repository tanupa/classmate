import 'package:classmate/services/auth.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
