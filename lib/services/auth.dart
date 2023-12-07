// auth.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:classmate/models/userModel.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser _userFromFirebaseUser(User? user) {
    return user != null ? MyUser(uid: user.uid) : throw Exception('User is null');
  }

  Stream<MyUser?> get user {
    return _auth.authStateChanges().map((User? user) => _userFromFirebaseUser(user));
  }

  Future<MyUser> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      throw Exception('Sign in failed');
    }
  }

  Future<MyUser> signUp(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      throw Exception('Sign up failed');
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
      throw Exception('Sign out failed');
    }
  }

  MyUser? getCurrentUser() {
    User? user = _auth.currentUser;
    return _userFromFirebaseUser(user);
  }
}
