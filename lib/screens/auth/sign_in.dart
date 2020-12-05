import 'package:belajarFlutter/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class SignInPage extends StatefulWidget {
  final Function toogleView;
  SignInPage({this.toogleView});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill)),
              child: Positioned(
                  child: FadeIn(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'WELCOME',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FadeInDown(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[300],
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[400]))),
                              child: TextFormField(
                                controller: _email,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'E-mail can\'t be empty';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'E-mail',
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _password,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Password can\'t be empty';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: Container(
                            padding: EdgeInsets.all(30.0),
                            child: RaisedButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  await AuthService.signIn(
                                      _email.text, _password.text);
                                }
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              color: Colors.purple[100],
                              padding: EdgeInsets.all(15),
                            ),
                          )),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          padding: EdgeInsets.all(30.0),
                          child: FlatButton(
                              onPressed: () => widget.toogleView(),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.grey[400]),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
