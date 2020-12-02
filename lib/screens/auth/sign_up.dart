import 'package:belajarFlutter/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _fomKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeInUp(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 24, color: Colors.purple[200]),
              ),
              Form(
                key: _fomKey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[400]))),
                            child: TextFormField(
                              controller: _email,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'email can\'t be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                  hintText: 'E-mail'),
                            ),
                          ),
                          Container(
                            child: TextFormField(
                              controller: _password,
                              obscureText: true,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'password can\'t be empty';
                                } else if (value.length < 6) {
                                  return 'password must at least 6 characters';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                  hintText: 'Password'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.all(40.0),
                        child: RaisedButton(
                          onPressed: () async {
                            if (_fomKey.currentState.validate()) {
                              await AuthService.signUP(
                                  _email.text, _password.text);
                              // Navigator.of(context).pushReplacementNamed('/');
                            }
                          },
                          color: Colors.purple[100],
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
