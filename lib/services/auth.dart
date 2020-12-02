import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;

class AuthService {
  // sign up
  static Future<User> signUP(String email, String password) async {
    UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    User user = result.user;
    return user;
  }

  // sign in
  static Future<User> signIn(String email, String password) async {
    UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    User user = result.user;
    return user;
  }

  // sign out
  static Future<Void> signOut() async {
    _auth.signOut();
  }

  // stream
  static Stream<User> get userStream => _auth.authStateChanges();
}
