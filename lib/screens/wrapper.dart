import 'package:belajarFlutter/screens/auth/authenticate.dart';
import 'package:belajarFlutter/screens/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return (user == null) ? Authenticate() : MainPage();
  }
}
