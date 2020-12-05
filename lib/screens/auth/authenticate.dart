import 'package:belajarFlutter/screens/auth/sign_in.dart';
import 'package:belajarFlutter/screens/auth/sign_up.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool _showSignIn = true;
  void toogleView() {
    setState(() => _showSignIn = !_showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (_showSignIn) {
      return SignInPage(
        toogleView: toogleView,
      );
    } else {
      return SignUpPage(
        toogleView: toogleView,
      );
    }
  }
}
