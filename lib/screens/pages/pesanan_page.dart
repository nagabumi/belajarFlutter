import 'package:flutter/material.dart';

class PesananPage extends StatefulWidget {
  @override
  _PesananPageState createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text('Pesanan'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Pesanan'),
      ),
    );
  }
}
