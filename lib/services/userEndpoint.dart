import 'package:classmate/models/userModel.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';

class UserAPI {
  static Future<Map<String, dynamic>?> fetchCurrentUser() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        String? authToken = await user.getIdToken();
        String apiUrl =
            'https://firestore.googleapis.com/v1/projects/classmate-174aa/databases/(default)/documents/usersV2/${user.uid}';

        final response = await http.get(
          Uri.parse(apiUrl),
          headers: {'Authorization': 'Bearer $authToken'},
        );

        if (response.statusCode == 200) {
          // Handle successful response
          print('Data: ${response.body}');
          Map<String, dynamic> userData = json.decode(response.body);
          return userData;
        } else {
          // Handle error response
          print('Error: ${response.statusCode}');
          return null;
        }
      } else {
        print('User not signed in');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}