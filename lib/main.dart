import 'package:belajarFlutter/screens/auth/sign_in.dart';
import 'package:belajarFlutter/screens/auth/sign_up.dart';
import 'package:belajarFlutter/screens/pages/main_page.dart';
import 'package:belajarFlutter/screens/wrapper.dart';
import 'package:belajarFlutter/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService.userStream,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/signIn': (context) => SignInPage(),
          '/signUp': (context) => SignUpPage(),
          '/mainPage': (context) => MainPage()
        },
      ),
    );
  }
}
