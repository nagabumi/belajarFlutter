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
        child: Text('Dompet'),
      ),
    );
  }
}
