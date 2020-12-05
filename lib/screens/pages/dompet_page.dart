import 'package:belajarFlutter/services/auth.dart';
import 'package:flutter/material.dart';

class DompetPage extends StatefulWidget {
  @override
  _DompetPageState createState() => _DompetPageState();
}

class _DompetPageState extends State<DompetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text('Dompet'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Dompet'),
            RaisedButton(
              onPressed: () async {
                await AuthService.signOut();
              },
              child: Text('sign out'),
            )
          ],
        ),
      ),
    );
  }
}
